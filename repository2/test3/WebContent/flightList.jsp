 <%@ include file="header.jsp" %>
   
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Master Flight List</title>
</head>
<body>

<%  if(session.getAttribute("username")== null)
{
	response.sendRedirect("1.jsp");
}
 %>

<% String msg=request.getParameter("msg");
	if("done".equals(msg))
	{
%>
<h3 class="alert">Product Successfully Updated!</h3>
<%} %>
<% if("wrong".equals(msg))
{ %>
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%} %>

 <table cellpadding="15" cellspacing="5" border="5">
      <thead>
        <tr>
         <th> ID</th>
         <th> Flight <br>Name</th>
          <th> AirLine</th>
         
          <th>Source</th>
          <th> Destination</th>
           <th> Date</th>
          <th> Time</th>
          <th>Price</th>
          
        </tr>
      </thead>
    </table>

<table cellpadding="13" cellspacing="5" border="5">
      <tbody>
       
        
      <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
  	  <% try {
  		Connection con = ConnectionProvider.getCon();
  		Statement st = con.createStatement();
  		ResultSet rs = st.executeQuery("select * from flight");
  		while(rs.next())
  		{
  		%>	
  		
        <tr>
      <td><%=rs.getString(1)%></td>
      <td><%=rs.getString(2)%></td> 
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(5)%></td>
      <td><%=rs.getString(6)%></td>
      <td><%=rs.getString(7)%></td>
      <td><%=rs.getString(8)%></td>
      <td><a href="editFlight.jsp?id=<%=rs.getString(1)%>"> Edit</a></td>
      </tr>
       
  		
  		<%}
  		
  	  }
  	  catch(Exception e)
  	  {
  		  
  	  }
  	  
  	  %>
      

</body>
</html>