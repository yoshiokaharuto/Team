<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h2>新規登録</h2>
		
		<form action="registerConfirmServlet" method="post">
		名前:<input type="text" name="name"> <br>
		メール:<input type="email" name="mail"> <br>
		パスワード:<input type="password" name="pw"> <br>
		
		<input type="submit" value="登録"> <br>
		</form>
</body>
</html>