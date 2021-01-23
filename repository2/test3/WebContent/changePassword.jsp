 <%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change PassWord</title>

<%  if(session.getAttribute("username")== null)
{
	response.sendRedirect("1.jsp");
}
 %>
</head>
<body>

<h3> Change Password:</h3>
<%
String msg= request.getParameter("msg");
if("notMatch".equals(msg))
{
%>
<h4> New Password and confirm Password doesnt match</h4>
<%   
}
if("wrong".equals(msg))
{
	%>
	<h4>your old password is wrong </h4>
	<%  } %>
	<% 
	if("done".equals(msg))
{
	%>
	<h4> sucessfully changed </h4>
	<%  } %>
	<%
	if("invalid".equals(msg))
{
	%>
	<h4> Something Went Wrong</h4>
	<%  } %>
<form action="changePasswordAction.jsp" method="post">

Enter Old Password:: <input type="password" name="oldpassword"  required> <br> <br>
Enter New Password::<input type="password" name="newpassword"  required>	<br> <br>
 Confirm Password::<input type="text" name="conpassword"  required>	<br> <br>
<input type="submit"  value="save">


</form>	




</body>
</html>