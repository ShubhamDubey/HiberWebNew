<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Hibernate Home</title>
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
	<center>
		<form action="Register.jsp" method="post">
			Name:<input type="text" name="name" /><br> <br> Email ID:<input
				type="text" name="email" /><br> <br />Password:<input
				type="password" name="password" /><br> <br> <input
				type="submit" value="Register" />
		</form>
	</center>
</body>
</html>