<%@page import="java.sql.Connection"%>
<%@page import="com.connection.Connector"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="allComponents/allCSS.jsp" %>
<style type="text/css">
  <%@include file="css/style.css"%>
  .back-img{
  background: url("img/bg2.jpg");
  width: 100%;
  height: 80vh;
  background-repeat:no-repeat;
  background-size: cover;
  }
</style>
</head>
<body>
	 <%@include file="allComponents/navbar.jsp" %>
	 <% 
	 	Connection conn = Connector.getCon();
	 	System.out.print(conn);
	 %>
	 <div class="container-fluid back-img">
	 <div class="text-center">
	 <h1 class="text-white">E-Notes Save Your Notes </h1>
	 <a href="login.jsp" class="btn btn-light"><i class="fa fa-user" aria-hidden="true"></i>
	  Login</a> 
	 <a href="register.jsp" class="btn btn-light"><i class="fa fa-user-plus" aria-hidden="true"></i> Register</a> 
	 </div>
	 </div>
	 <%@include file="allComponents/footer.jsp" %>
</body>
</html>