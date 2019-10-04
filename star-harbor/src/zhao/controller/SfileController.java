package zhao.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionContext;
import javax.servlet.jsp.PageContext;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.sun.java.swing.plaf.windows.resources.windows;

import javafx.scene.control.Alert;
import zhao.pojo.Sfile;
import zhao.pojo.SfileExample;
import zhao.service.SfileService;
import zhao.util.ResponseUtil;

@Controller
public class SfileController {
	@Autowired
	private SfileService sfileService;
	SfileExample example = new SfileExample();

	@RequestMapping(value = "/index.action")
	@ResponseBody
	public ModelAndView index(HttpServletResponse res) throws IOException {
		System.out.println("-----------------fileList()");
		example.createCriteria().andIdIsNotNull();
		List<Sfile> list = sfileService.selectByExample(example);
		for (Sfile sfile : list) {
			System.out.println("----------sfile.getName()=" + sfile.getName());
		}
		ModelAndView mav = new ModelAndView(); // 閺佺増宓?
		mav.addObject("list", list);
		mav.setViewName("index");
		return mav;		
	}

	
	@RequestMapping(value = "/upload.action", method = RequestMethod.POST)
	public ModelAndView fileUpload(@RequestParam("pagefile") CommonsMultipartFile pagefile, HttpServletResponse res,
			HttpServletRequest req) throws IOException {
		// 用来检测程序运行时间
		long startTime = System.currentTimeMillis();
		String getFilename = pagefile.getOriginalFilename();
		System.out.println("---------------原始文件名fileName：" + pagefile.getOriginalFilename());
		ModelAndView mav = new ModelAndView(); // 閺佺増宓?
		
		String[] strArray = getFilename.split("\\.");
		int suffixIndex = strArray.length - 1;
		System.out.println("文件类型" + strArray[suffixIndex]);
		String filetype = strArray[suffixIndex];
		String storagename = req.getParameter("storagename");
		String author = req.getParameter("author");
		String pnumber = req.getParameter("pnumber");
		String money = req.getParameter("money");
		
		
		req.setAttribute("storagename",storagename);	
		String us= (String) req.getSession().getAttribute("username");
		String pn= (String) req.getSession().getAttribute("pnumber");
		
		
		System.out.println("--------us="+us);
		System.out.println("--------pn="+pn);
		if(us==null||us==""||pn==null||pn=="") {			
			req.setAttribute("message", "您未登录，不能上传文件！");
			req.setAttribute("messagestatus", "上传失败！");
			mav.setViewName("login");
			return mav;
		}
		
		
		try {
		String path = "D://Star-Harbor";
			String uuid = UUID.randomUUID().toString();
		System.out.println("----------storagename="+storagename+"name="+storagename);
			// getFilename .substring(getFilename .lastIndexOf("."));//这个是获取后缀名
			Date t = new Date();
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			String upload_time = df.format(t);
			System.out.println("--------------upload_time=" + upload_time);
			System.out.println("--------------上传时间=" + df.format(t));
			File f = new File(path);
			if (!f.exists()) {
				f.mkdirs();
			}			
			String storagePath = "D:/Star-Harbor/" + uuid + "_" + storagename+"."+filetype;
			req.setAttribute("storagePath", storagePath);
			req.setAttribute("storagename", storagename);
			
			String linkPath = "/Star-Harbor/" + uuid + "_" + storagename+"."+filetype;
			req.setAttribute("linkPath",linkPath);
			
			
			OutputStream os = new FileOutputStream(storagePath);
			// 获取输入流 CommonsMultipartFile 中可以直接得到文件的流
			InputStream is = pagefile.getInputStream();
			int temp;
			// 一个一个字节的读取并写入
			while ((temp = is.read()) != (-1)) {
				os.write(temp);
			}
			os.flush();
			os.close();
			is.close();
			// product.setPimage(newFileName);//文件名保存到实体类对应属性上
			Sfile sfile = new Sfile();
			sfile.setUuid(uuid);
			sfile.setType(filetype);
			sfile.setName(storagename);
			sfile.setAuthor(author);
			sfile.setPnumber(pnumber);
			sfile.setMoney(money);
			sfile.setUploadTime(upload_time);
			sfile.setLinkPath(linkPath);
			System.out.println("---------------存入数据库路径");
			int result = sfileService.setFilePath(sfile);
			if (result == 0) {
				req.setAttribute("messagestatus", "上传失败！");
				mav.setViewName("upload");
			}

			System.out.println("---------------result=" + result);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		long endTime = System.currentTimeMillis();
		System.out.println("方法一的运行时间：" + String.valueOf(endTime - startTime) + "ms");
		// return "/success";
		req.setAttribute("messagestatus", "上传成功！");
		mav.setViewName("success");
		return mav;
	}


	@RequestMapping(value = "/download.action")
	public Object download(HttpServletRequest request, HttpServletResponse res,
			@RequestParam("linkfilename") String filename,@RequestParam("dawnloadCount") Integer dawnloadCount,
			@RequestParam("id") int id) throws Exception {
		
	   File file = new File(filename);

		String fileName = new String(file.getName().getBytes("utf-8"), "iso-8859-1"); // 解决中文乱码问题
		HttpHeaders headers = new HttpHeaders();

		if (!file.exists()) {

			HttpSession session = request.getSession();
			session.setAttribute("message", "资源丢失，要下载的文件不存在");

			String l = "下载文件不存在";
			// return new ResponseEntity<>(l,headers, HttpStatus.OK);
			return "redirect:/jsp/nofile.jsp ";

		}
		
		Sfile sfile = new Sfile();
	
		System.out.println("---------------id="+id);
			
		Sfile getsfile=sfileService.selectByPrimaryKey(id);
		System.out.println("---------------根据id查找的sflist="+getsfile);
		
		System.out.println("---------------根据id查找的getsfile="+getsfile);
		System.out.println("---------------根据id查找的getsfile.getName()="+getsfile.getName());
		int count=getsfile.getDawnloadCount();
		count++;
		dawnloadCount++;
	getsfile.setDawnloadCount(count);
	
		System.out.println("---------------点击量dawnloadCount="+dawnloadCount);
		System.out.println("---------------点击量count="+count);
		int result = sfileService.updateDawnloadCount(getsfile);
		
		System.out.println("---------------=" + result);
		headers.setContentDispositionFormData("attachment", fileName);// aatachment 附件
		headers.setContentType(MediaType.IMAGE_PNG);
		ResponseEntity<byte[]> entity = new ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file), headers,
				HttpStatus.CREATED);
		return entity;	
	}
}
