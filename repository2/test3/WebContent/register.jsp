<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Register </title>
</head>
<body>
<h1> Register Form </h1>

<form action="registerAction.jsp" method="post">

<h4>
First Name : <input type="text" maxlength="50" name="fname" required> <br> <br>
Middle Name: <input type="text" maxlength="50"name="mname"> <br> <br>
Last Name:	<input type="text" maxlength="50"name="lname" required> <br> <br>
Gender : 	<input type="text" maxlength="15"  name="gender" required> <br> <br>
Mobile No.:	<input type="tel" maxlength="10" name="mobile" pattern="[123456789][0-9]{9}" required> <br> <br>
Country:	<input type="text" maxlength="15"name="country" required> <br> <br>
Email id:	<input type="email"maxlength="30" name="email" required> <br> <br>
Password:	<input type="password" maxlength="30"name="password" required> <br> <br>
</h4>

<h3>
<input type="submit" value="Register">
</h3>




</form>

</body>
</html>