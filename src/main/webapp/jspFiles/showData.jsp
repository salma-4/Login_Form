<%@page import="models.User"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>welcome</title>
</head>
<body>
<div style='text-align: center; margin-top: 50px;'>
<%User user = (User) request.getSession().getAttribute("user");%>
<h1>Welcome,  <%= user.getName() %></h1>
</div>
</body>
</html>