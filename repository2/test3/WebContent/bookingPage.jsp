<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
<h2> Sucessfully booked Ticket</h2>
<%}
if("wrong".equals(msg))
{
%>
<h2> Something went wrong</h2>
<%} %>


</body>
</html>