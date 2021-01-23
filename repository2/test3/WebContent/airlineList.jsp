 <%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>  Search AirLine List</title>
</head>
<body>

<%  if(session.getAttribute("username")== null)
{

	response.sendRedirect("1.jsp");
}
 %>

<h1>  
<form action="airlineListAction.jsp">  Enter Airline Name <input type="text" name="airlines">  
<input type="submit" value="search"> </form>
</h1>






</body>
</html>