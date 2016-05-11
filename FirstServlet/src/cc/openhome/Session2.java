package cc.openhome;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Session2
 */
@WebServlet("/Session2.View")
public class Session2 extends HttpServlet {
	private final static String names[] = { "C", "C++", "Java", "VB" };
	private final static String books[] = { "C: How to Program",
			"C++: How to Program", "Java: How to Program",
			"Visual Basic: How to Program" };

	public void service(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		PrintWriter output;
		res.setContentType("text/html;charset=Big5");
		output = res.getWriter();
		StringBuffer buf = new StringBuffer();
		buf.append("<html><head><title>\n");
		buf.append("Recommended Book List\n");
		buf.append("</title></head><body>\n");

		// do NOT create a session if one does not exist
		// 需要使用 false 當作 getSession() 的參數
		HttpSession session = req.getSession(false);

		// 如果沒有之前的 session，則要求使用者到第一個網頁
		if (session == null) {
			buf.append("<h1>請重新選擇</h1>\n");
			buf.append("<a href=\"session.html\">" + "請按這裡</a>\n");
			// Or 直接將結果轉向第一個網頁
			// res.sendRedirect("http://localhost:8080/testsession.html");
		} else {
			// get values from session
			String lang = (String) session.getAttribute("language");
			for (int i = 0; i < names.length; i++)
				if (lang.equals(names[i]))
					buf.append("<h1>" + books[i] + "</h1>\n");
		}

		buf.append("</body></html>\n");
		output.println(buf.toString());
		output.close();
	}
}