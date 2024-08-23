<%@page import="com.entity.RestaurantEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Restuarant</title>
</head>
<body>
	<%
	RestaurantEntity restaurant = (RestaurantEntity)request.getAttribute("restaurant");
	%>

	<form action="updaterestaurant" method="post">
		Restaurant Id:       <input type="text" name="restaurantId" value="<%=restaurant.getRestaurantId()%>" readonly> <br><br>
		Restaurant Name:     <input type=text name="name" value="<%=restaurant.getName()%>"> <br><br>
		Restaurant Address:  <input type=text name="address" value="<%=restaurant.getAddress()%>"> <br><br>
		Restaurant Category: <input type=text name="category" value="<%=restaurant.getCategory()%>"> <br><br>
		<input type=submit value="Update Restaurant">
	</form>
</body>
</html>