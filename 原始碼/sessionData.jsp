<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�]�w session ���</title></head>
    <body>
    
    <%
        session.setAttribute("idvalue","������");
        session.setAttribute("sex","�j�ǳ��k�P��");
        session.setAttribute("hobby","���y�B�]�B"); 
    %>
    
    <a href="usingSession.jsp"> ��ܤw�]�w�� session ��Ƥ��e </a>

    </body>
</html>
