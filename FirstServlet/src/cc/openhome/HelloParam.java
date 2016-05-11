package cc.openhome;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;

public class HelloParam extends HttpServlet
{
  private String p1, p2;

  public void init( ServletConfig con ) throws ServletException
  {
    p1 = con.getInitParameter("param2");
    p2 = con.getInitParameter("dsn");
  }

  public void service(HttpServletRequest req, HttpServletResponse res)
         throws ServletException, IOException
  {
    PrintWriter output;

    res.setContentType("text/html;charset=Big5");
    output = res.getWriter();

    StringBuffer buf = new StringBuffer();
    buf.append("<html><head><title>\n");
    buf.append("Hello Parameter\n");
    buf.append("</title></head><body>\n");
    buf.append("dsn = " + p2 + "<br/>\n");
    buf.append("param2 = " + p1 + "<br/>\n");
    buf.append("</body></html>\n");
    output.println(buf.toString());
    output.close();
  }
}