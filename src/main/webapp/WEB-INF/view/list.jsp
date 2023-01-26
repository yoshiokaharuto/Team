<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Stock" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body background="img/tosyo3.jpg">
	<table border="3" bgcolor="#e3f0fb">
		<tr>
			<th>備品名</th>
			<th>在庫数</th>
		</tr>
			<%
	List<Stock> list = (ArrayList<Stock>)request.getAttribute("list");
	for(Stock s : list) {
	%>
		<tr>
			<td><%=s.getName() %></td>
			<td><%=s.getNum() %></td>
		</tr>
	<%} %>
	</table>
</body>
</html>