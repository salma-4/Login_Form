<%@page import="java.sql.SQLException"%>
<%@page import="models.User"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="windows-1256">
<title>Insert title here</title>
</head>
<body>
<%
String name =request.getParameter("username");
String password =request.getParameter("password");
try {
	 Statement st=(Statement)request.getServletContext().getAttribute("statement");

	ResultSet res=st.executeQuery("select * from users where name ='"+name+"'and password ='"+password+"'");
         if (res.next()) {
        	 User user=  new User();
        	 user.setId(res.getInt("id"));
        	 user.setPassword(res.getString("password"));
        	 user.setName(res.getString("name"));
        	 request.getSession().setAttribute("user", user);
        	 RequestDispatcher dis= request.getRequestDispatcher("showData.jsp");
        	 dis.forward(request, response);
   
         }else{
        	 out.print(name +" "+password);
         }
}  catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}

%>
</body>
</html>