<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Continue Booking</title>
</head>
<body>
<%  if(session.getAttribute("email")== null)
{
	response.sendRedirect("1.jsp");
}
 %>

<%

String msg= request.getParameter("msg");
if("done".equals(msg))
{
%>
<h2> Sucessfully registered </h2>
<%}
if("wrong".equals(msg))
{
%>
<h2> Something went wrong</h2>
<%} %>

<h1> For continue booking Click here</h1>
<form action="store2" method="post">
<input type="submit" value="continue booking">

</form>

</body>
</html>