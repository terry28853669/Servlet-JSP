<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>
Greetings
</title>
</head>

<body>
<% String s = 
   new String(request.getParameter("data").getBytes("ISO-8859-1"), "UTF-8");
%>
<h1>Hello <%=s%></h1>
<%
   out.println("<h1>試試看 out 物件</h1>" + s);
%>
</body>
</html>