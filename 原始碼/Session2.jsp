<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%!private final static String names[] = { "C", "C++", "Java", "VB" };
	private final static String books[] = { "C: How to Program",
			"C++: How to Program", "Java: How to Program",
			"Visual Basic: How to Program" };%>

<html>
<head>
<title>Recommended Book List</title>
</head>
<body>
	<%
		String id = (String) session.getAttribute("sid");
		// 用來觀察 session ID 的變化，直接寫到 tomcat 的 console，請仔細觀察
		out.println(session.getId());
		if (session.isNew()) {
			// 用來觀察 session ID 的變化
			out.println("NewSession:" + id);
			response.sendRedirect("Session1w.jsp");
		} else {
			String lang = request.getParameter("lang");
			if (lang == null) {
				// 用來觀察 session ID 的變化
				out.println("lang:" + id);
				response.sendRedirect("Session1w.jsp");
			} else {
				for (int i = 0; i < names.length; i++) {
					if (lang.equals(names[i])) {
						out.println("<h1>" + books[i] + "</h1>");
						break;
					}
				}
			}
		}
	%>
	<a href="Session1w.jsp">重新作答</a>
</body>
</html>