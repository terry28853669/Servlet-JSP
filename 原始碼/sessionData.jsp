<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>設定 session 資料</title></head>
    <body>
    
    <%
        session.setAttribute("idvalue","陳振遠");
        session.setAttribute("sex","大學部男同學");
        session.setAttribute("hobby","打球、跑步"); 
    %>
    
    <a href="usingSession.jsp"> 顯示已設定之 session 資料內容 </a>

    </body>
</html>
