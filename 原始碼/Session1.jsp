<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String id = session.getId();

		// 我們自訂 Session 的屬性名稱以及屬性值
		session.setAttribute("sid", id);
	%>
	<form method="POST" action="Session2.jsp">
		<strong>請選擇你想進一步了解的電腦語言：</strong>
		<p />
		<input type="radio" name="lang" value="C">C</input><br /> <input
			type="radio" name="lang" value="C++">C++</input><br /> <input
			type="radio" name="lang" value="Java" checked>Java</input><br /> <input
			type="radio" name="lang" value="VB">Visual Basic</input>
		<p />
		<input type="submit" value="確定" /> <input type="reset" />
	</form>
</body>
</html>