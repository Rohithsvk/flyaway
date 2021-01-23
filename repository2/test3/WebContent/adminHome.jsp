 <%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>

<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
h1{
 text-align: center;
 }
.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
  }
  </style>
</head>

<body>

<%  if(session.getAttribute("username")== null)
{
	response.sendRedirect("1.jsp");
}
 %>
<div class="topnav">

 
</div>
<br>
<h1> Welcome Admin</h1>   

hi ${username}
</body>
</html>