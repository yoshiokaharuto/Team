<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h2>ログイン</h2>
	<form action="LoginServlet" method="post">
		<input type="email" name="mail" placeholder="メールアドレス"><br>
		<input type="password" name="pw" placeholder="パスワード"><br>
		<input type="submit" value="ログイン">
	</form>
	<a href="RegisterAccFormServlet">新規登録</a>
</body>
</html>