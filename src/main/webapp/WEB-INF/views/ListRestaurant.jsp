<%@page import="java.util.List"%>
<%@page import="com.entity.RestaurantEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2>Restaurant List</h2>
	
	<%
	List<RestaurantEntity> restaurants = (List<RestaurantEntity>) request.getAttribute("restaurants");
	%>
	
	<table border="1">
		<tr>
			<th>Restaurant Id</th>
			<th>Restaurant Name</th>
			<th>Restaurant Category</th>
			<th>Action</th>
		</tr>
	
	<%
		for(RestaurantEntity r: restaurants){
	
	%>		
		<tr>
			<td><%= r.getRestaurantId() %></td>
			<td><%= r.getName() %></td>
			<td><%= r.getCategory() %></td>
			<td><a href="/deleterestaurant?restaurantId=<%= r.getRestaurantId() %>">Delete</a>||<a href="/editrestaurant?restaurantId=<%= r.getRestaurantId() %>">Edit</a></td>
		</tr>
	<%		
		}
	%>
	
	</table>
</body>
</html>