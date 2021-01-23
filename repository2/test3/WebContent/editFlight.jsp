 <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
  	  <%@ include file="header.jsp" %>
  	  
<html>
<head>

<title> edit  flight</title>

</head>
<body>

<%  if(session.getAttribute("username")== null)
{
	response.sendRedirect("1.jsp");
}
 %>

 <h2><a class="back" href="flightList.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>
<% String id= request.getParameter("id");

try{
	Connection con = ConnectionProvider.getCon();
  		Statement st = 	con.createStatement();
  		ResultSet rs= st.executeQuery("select * from flight where id='"+ id+"'");
  		while(rs.next())
  		{
%>

<form action="editFlightAction.jsp" method="post">
<input type="hidden" name="id" value="<%out.println(id); %>">


 Flight Name
 <input class="input-style" type="text" name="flightname" value="<%=rs.getString(2) %>" requried> &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
Airlines::
  <input class="input-style" type="text" name="Airline" value="<%=rs.getString(3) %>" requried> <br> <br>


 Source:<input class="input-style" type="text" name="source" value="<%=rs.getString(4) %>" requried> &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
  Destination:<input class="input-style" type="text" name="destination" value="<%=rs.getString(5) %>" requried> <br> <br>
  Date of Journey <input class="input-style" type="text" name="doj" value="<%=rs.getString(6) %>" requried>&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
  Time: <input class="input-style" type="text" name="time" value="<%=rs.getString(7) %>" requried> <br> <br>
  Price:<input class="input-style" type="text" name="price" value="<%=rs.getString(8) %>" requried>  <br> <br>
  
 <button class="button"> Save   <i class='far fa-arrow-alt-circle-right'></i></button>

 </form>
 <%
  		}
 }
 catch(Exception e)
 {
 System.out.println(e);
 }
 %>

</body>
<br><br><br>
</body>
</html>