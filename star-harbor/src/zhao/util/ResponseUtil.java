package zhao.util;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

public class ResponseUtil {
 public static void write(HttpServletResponse response,Object object) throws IOException {
	 response.setContentType("text/html;charset=utf-8");
	 PrintWriter out=response.getWriter();
     out.println(object);
     out.flush();
     out.close();
	
}
}
