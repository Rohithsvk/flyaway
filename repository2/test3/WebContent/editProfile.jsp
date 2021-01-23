 <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
  	  <%@ include file="userheader.jsp" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Edit Profile </title>
</head>
<body>

<%  if(session.getAttribute("email")== null)
{
	response.sendRedirect("1.jsp");
}
 %>

<h2><a class="back" href="flightList.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>
<% String email= session.getAttribute("email").toString();

try{
		Connection con = ConnectionProvider.getCon();
  		Statement st = 	con.createStatement();
  		ResultSet rs= st.executeQuery("select * from user where email='"+ email+"'");
  		while(rs.next())
  		{
%>

<form action="editProfileAction.jsp" method="post">
<input type="hidden" name="id" value="<%out.println(email); %>">

1.First Name:: 		<input type="text" name="fname" value="<%=rs.getString(1) %>" > &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
2.Middle Name::  	<input type="text" name="mname" value="<%=rs.getString(2) %>"> <br> <br>
3.Last name::		<input type="text" name="lname" value="<%=rs.getString(3) %>"> &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
4.Gender::			<input type="text" name="gender" value="<%=rs.getString(4) %>" > <br> <br>
5.Mobile ::			<input type="text" name="mobile" value="<%=rs.getString(5) %>"maxlength="10" pattern="[123456789][0-9]{9}" >&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
6.Country::			<input type="text" name="country" value="<%=rs.getString(6) %>" > <br> <br>
<input type="submit" value="update">

 </form>
 <%
  		}
 }
 catch(Exception e)
 {
 System.out.println(e);
 }
 %>














</body>
</html>