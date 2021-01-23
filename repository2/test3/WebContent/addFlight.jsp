 <%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Add New Flights</title>
</head>
<body>
<%  if(session.getAttribute("username")== null)
{
	response.sendRedirect("1.jsp");
}
 %>
<br>
<h3> Add New Flight: </h3> <br>
<form action="addFlightAction.jsp" method="post">
Flight Id: <input type="text" name="id" required> &nbsp; &nbsp;&nbsp;
Flight Name:  <input type="text" name="flightname" required> <br> <br>
Flight Company: <input type="text" name="airlines" required> &nbsp; &nbsp;&nbsp;
Source:	 <input type="text" name="source" required>		<br> <br>
Destination:  <input type="text" name="destination" required>&nbsp; &nbsp;&nbsp;
Date :	 <input type="date" name="date" required>		<br> <br>
Time:  <input type="text" name="time" required>&nbsp; &nbsp;&nbsp;
Price: <input type="number" name="price" required>  <br> <br>

<input type="submit" Value="add new Flight">

<%
String msg= request.getParameter("msg");
if("done".equals(msg))
{
%>
<h2> Sucessfully added </h2>
<%}
if("wrong".equals(msg))
{
%>
<h2> Something went wrong</h2>
<%} %>




</form>

</body>
</html>