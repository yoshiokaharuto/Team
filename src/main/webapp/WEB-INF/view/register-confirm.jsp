<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "dto.Account"  %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<p>下記の情報を登録します</p>
		
		<%
		Account account = (Account)session.getAttribute("input_data");
		%>
		
		名前: <span><%= account.getName() %></span>  <br>
		メール:<span><%= account.getMail() %></span>  <br>
		パスワード:***********  <br>
		
		<a href="registerExecuteServlet">OK</a>
		<a href="registerServlet">戻る</a> <br>
</body>
</html>