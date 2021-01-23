<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
String id=request.getParameter("id");
session.setAttribute("id",id);

if(session.getAttribute("email")== null)
{
	response.sendRedirect("register.jsp");
}
else
{
	response.sendRedirect("book.jsp");
}
%>


</body>
</html>