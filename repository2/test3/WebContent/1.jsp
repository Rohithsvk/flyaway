
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> FlyAway Home Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}
h1{
 text-align: center;
 }
.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: right;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
form{
background-color: skyblue;
text-align: center;

}
 input[type=submit]  {
  background-color: green;
  border: none;
  color: white;
  padding: 16px 32px;
  text-decoration: none;
  margin: 4px 2px;
  cursor: pointer;
</style>
</head>
</head>
<body>
<h1> FlyAway AirLines</h1>

<div class="topnav">
  <a class="active" href="1.jsp">Home</a>

  <a href="userLogin.jsp">User Login</a>
  <a href="adminLogin.jsp">Admin</a>
</div>
<br>
<div>


<form action="store" method="post">
<fieldset >

<h3>Source</h3>
<input type="text" name="source" placeHolder="From" required>

<h3>Destination</h3>

<input type="text" name="destination" placeHolder="To" required>
<h3> Date of Journey </h3>
<input type="date" name="doj"  required>

<h3> Number of Passengers </h3>
<select name="passengers" value=" select passengers"> 
<option value="1">1 </option>
<option value="2">2 </option>
<option value="3">3 </option>
<option value="4">4 </option>
<option value="5">5 </option>
<option value="6">6 </option>
<option value="7">7 </option>
<option value="8">8 </option>
<option value="9">9 </option>
</select>
<br>
<br>

<input type="submit" value=" Search for Flights">



</fieldset>



</form>

</div>

</body>
</html>