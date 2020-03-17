<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.niit.hiberwebnew.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link
	href="https://fonts.googleapis.com/css?family=Quicksand&display=swap"
	rel="stylesheet">
<style>
* {
	font-family: 'Quicksand', sans-serif;
}
</style>
</head>
<body>

	<jsp:useBean id="userBean" class="com.niit.hiberwebnew.User"></jsp:useBean>

	<jsp:setProperty name="userBean" property="*" />

	<%
		try {
			int i = UserDao.register(userBean);
			if (i > 0) {
				//out.println("<img src="/Well-Done-Applause.gif"></img>");
				out.println("<center><h3>You are Successfully Registered</h3></center>");
			}
		} catch (Exception e) {
			out.println(e);
		}
	%>
</body>
</html>