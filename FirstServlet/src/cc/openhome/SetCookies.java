package cc.openhome;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SetCookies
 */
@WebServlet("/SetCookies.View")
public class SetCookies extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		PrintWriter output;

		res.setContentType("text/html;charset=Big5");
		output = res.getWriter();

		Cookie myck1 = new Cookie("UID", "123");
		res.addCookie(myck1);
		Cookie myck2 = new Cookie("PWD", "abc");
		res.addCookie(myck2);

		StringBuffer buf = new StringBuffer();
		buf.append("<html><head><title>\n");
		buf.append("Write Cookies\n");
		buf.append("</title></head><body>\n");
		buf.append("<h1>寫入 Cookie</h1>\n");
		buf.append("</body></html>\n");
		output.println(buf.toString());
		output.close();
	}
}