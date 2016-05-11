<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
<head>
<title>示範 out 物件方法</title>
</head>
<body>
	<%
		out.println("JSP2.2動態網頁<br>");
		out.clearBuffer();
		out.println("博碩文化出版<br>");
		out.flush();
		out.println("最新改版!期待上市<br>");
		out.println("==================================<br>");
		out.println("剩餘緩衝區大小：" + out.getRemaining() + " bytes<br>");
		out.println("預設緩衝區大小：" + out.getBufferSize() + " bytes<br>");
		out.println("AutoFlush：" + out.isAutoFlush());
	%>
</body>
</html>
