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
 * Servlet implementation class UseCookies
 */
@WebServlet("/UseCookies.View")
public class UseCookies extends HttpServlet {
	public void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		// private static final long serialVersionUID = 1L;
		PrintWriter output;
		res.setContentType("text/html;charset=UTF-8");
		output = res.getWriter();

		StringBuffer buf = new StringBuffer();
		buf.append("<html><head><title>\n");
		buf.append("Use Cookies\n");
		buf.append("</title></head><body>\n");

		Cookie[] cookie = req.getCookies();
		if (cookie.length == 0)
			buf.append("<h1>沒有 Cookie</h1>\n");
		else {
			buf.append("<h1 align=\"center\">大家好</h1>\n");
			buf.append("<ul>\n");
			for (int i = 0; i < cookie.length; i++)
				buf.append("<li> " + cookie[i].getName() + "="
						+ cookie[i].getValue());
			buf.append("</ul>\n");
		}

		buf.append("</body></html>\n");
		output.println(buf.toString());
		output.close();
	}
}