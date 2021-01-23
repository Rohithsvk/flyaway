<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>
</head>
<body>
<h1> AdminLOGin</h1>
<%
String msg= request.getParameter("msg");
if("notexist".equals(msg))
{
%>
<h2> Password or Email is wrong</h2>
<%}
if("wrong".equals(msg))
{
%>
<h2> You are not a admin </h2>
<%} %>

<form action="adminLoginAction.jsp" method="post">

Enter Your UserName : <input type="text" name="uname" placeholder="Registered Email" required> <br> <br>
Enter Your PassWord : <input type="password" name="password" Placeholder="Password" required>   <br> <br>
<input type="submit" value="Login">  <br> <br>   </h3> 
</form>


</body>
</html>