<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=Big5">
<title>Test Servlet Sessions</title>
</head>

<body>
	<%
		String id = (String) session.getAttribute("sid");
		out.println("Waring:" + id+ "<br>");
		session.invalidate();
	%>
	你必須先選擇語言，
	<a href="Session1.jsp">請選擇</a>。
</body>
</html>