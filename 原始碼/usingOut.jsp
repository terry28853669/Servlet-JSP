<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
<head>
<title>�ܽd out �����k</title>
</head>
<body>
	<%
		out.println("JSP2.2�ʺA����<br>");
		out.clearBuffer();
		out.println("�պӤ�ƥX��<br>");
		out.flush();
		out.println("�̷s�睊!���ݤW��<br>");
		out.println("==================================<br>");
		out.println("�Ѿl�w�İϤj�p�G" + out.getRemaining() + " bytes<br>");
		out.println("�w�]�w�İϤj�p�G" + out.getBufferSize() + " bytes<br>");
		out.println("AutoFlush�G" + out.isAutoFlush());
	%>
</body>
</html>
