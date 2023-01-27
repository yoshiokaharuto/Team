<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3><font color=" lime">下記の備品を登録しました。</font></h3>
		<%
	request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
	String num = request.getParameter("num");
	%>
		<font color=" white">備品名：<%=name %></font><br>
	<font color=" white">在庫数：<%=num %></font><br>
	
		<a href="TopServlet">戻る</a>
</body>
</html>