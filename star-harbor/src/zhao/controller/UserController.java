package zhao.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sun.java.swing.plaf.windows.resources.windows;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import zhao.pojo.UserExample;
import zhao.pojo.User;
import zhao.service.UserService;
import zhao.util.ResponseUtil;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	UserExample example = new UserExample();

	@RequestMapping(value = "/user.action")
	@ResponseBody
	public ModelAndView queryUserList(HttpServletResponse res) throws IOException {
		System.out.println("-----------------queryuserList()");
		example.createCriteria().andIdIsNotNull();
		List<User> list = userService.selectByExample(example);
		for (User user : list) {
			System.out.println("----------user.getUsername()=" + user.getUsername());
			System.out.println("----------user.getRole()=" + user.getRole());
		}
		ModelAndView mav = new ModelAndView(); // 閺佺増宓?
		mav.addObject("list", list);
		mav.setViewName("user");
		return mav;
	}

	// 登录验证
	@RequestMapping(value = "/login.action")
	@ResponseBody
	public ModelAndView login(HttpServletRequest req) {

		String pnumber=req.getParameter("pnumber");
		String password=req.getParameter("password");
		User user = new User();
		ModelAndView mav = new ModelAndView(); 
		HttpSession session = req.getSession();
		
		if(pnumber==null||pnumber==""||password==null||password=="") {			
			req.setAttribute("message", "请输入您的正确账号和密码！");
			
			mav.setViewName("login");
			return mav;
		}	
		
		System.out.println("--------pnumber=" + pnumber);
		System.out.println("---------password=" + password);
		user.setPnumber(pnumber);
		user.setPassword(password);
		User user2 = userService.logincheck(user);
		if (user2 != null) {
			String username = user2.getUsername();			
			session.setAttribute("username", username);
			session.setAttribute("pnumber", pnumber);
			
			System.out.println("---------user2 != null");
			mav.setViewName("index");
			
			
		} else {
			System.out.println("---------user2==null");
			req.setAttribute("message",  "账号或密码错误,请重新输入！");
			//session.setAttribute("error", "账号或密码错误，请重新输入！");
			mav.setViewName("login");			
		}
		return mav;
	}

	/*// 登录验证
		@RequestMapping(value = "/login.action")
		@ResponseBody
		public String login(@RequestParam("pnumber") String pnumber, @RequestParam("password") String password, 
				HttpServletRequest req) {
			User user = new User();
			
			HttpSession session = req.getSession();
			
			if(pnumber==null||pnumber==""||password==null||password=="") {			
				req.setAttribute("message", "请输入您的正确账号和密码！");
				
			
				return "redirect:/http:/localhost:8080/star-harbor/jsp/login.jsp";
			}	
			
			System.out.println("--------pnumber=" + pnumber);
			System.out.println("---------password=" + password);
			user.setPnumber(pnumber);
			user.setPassword(password);
			User user2 = userService.logincheck(user);
			
			
			if (user2 != null) {
				String username = user2.getUsername();			
				session.setAttribute("username", username);
				session.setAttribute("pnumber", pnumber);
				
				System.out.println("---------user2 != null");
				
				return "redirect:/index.action ";
				
			} else {
				System.out.println("---------user2==null");
				req.setAttribute("message",  "账号或密码错误,请重新输入！");
				//session.setAttribute("error", "账号或密码错误，请重新输入！");
				return "redirect:/http://localhost:8080/star-harbor/jsp/login.jsp";
				
			}
			
		}*/

	
}
