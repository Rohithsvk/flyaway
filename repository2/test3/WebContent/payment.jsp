<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>payment</title>
</head>
<body>

<%  if(session.getAttribute("email")== null)
{
	response.sendRedirect("1.jsp");
}
 %>
h1> Your Tickets have booked Successfully</h1>
<h1> You can check in your <a href="1.jsp"> Go to Home  Page</a></h1>
</body>
</html>