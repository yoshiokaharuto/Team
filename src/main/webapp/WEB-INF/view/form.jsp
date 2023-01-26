<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登録ページ</title>
</head>
<body>
		<h1><font color=" white">登録する備品を入力してください</font></h1>
	<form action="success" method="post">
		<font color=" white">備品名：</font><input type="text" name="name"><br>
		<font color=" white">在庫数：</font><input type="text" name="num"><br>
		<input type="submit" value="登録">
	</form>
	<a href="TopServlet">戻る</a>
</body>
</html>