<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>使用者登入(JSP版)</title></head>
<body>
<%
String name = request.getParameter("tbxName");
//取得表單傳遞過來的tbxName欄位值

String password = request.getParameter("tbxPassword");
//取得表單傳遞過來的tbxPassword欄位值
%>
帳號 : <% out.write(name); //以out物件輸出資料 %><br>
密碼 : <% out.write(password); %><br>
</body>
</html>