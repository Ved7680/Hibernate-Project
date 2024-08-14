<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Restaurant Registration</h2>
	
	<form action=saverestaurant method=post>
		Restaurant Name:     <input type=text name="name"> <br><br>
		Restaurant Address:  <input type=text name="address"> <br><br>
		Restaurant Category: <input type=text name="category"> <br><br>
		<input type=submit value="Register">
	</form>
</body>
</html>