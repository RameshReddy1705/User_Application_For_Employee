   <%@page import="org.application.credentials.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	User u=(User) session.getAttribute("u");
	if(u!=null){
	%>
	<form action="edit" method="post">
		Id : <input type="number" name="id" value="<%=u.getId()%>" readonly="readonly">
		<input type="submit" value="Delete"><br>
		
	</form>
	<% 
	}else{
		response.sendRedirect("login.jsp");
	}
	%></body>
</html>