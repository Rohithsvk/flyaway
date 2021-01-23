 <%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>  Bookings</title>
</head>
<body>

<%  if(session.getAttribute("username")== null)
{
	response.sendRedirect("1.jsp");
}
 %>

<table cellpadding="15" cellspacing="5" border="5">
      <thead>
        <tr>
         <th>  Registered Email</th>
         <th> Flight <br>Name</th>
          <th> AirLine</th>
         
          <th>Source</th>
          <th> Destination</th>
           <th> Date</th>
          <th> Time</th>
          <th>Price</th>
          
          <th>Name</th>
          <th> Age</th>
           
          <th> mobile</th>
          <th> number of <br>
        passengers</th>
          <th>total <br> price</th>
          <th> Booking Id 
       </th>
          
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
  		ResultSet rs = st.executeQuery("select * from book");
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
       <td><%=rs.getString(9)%></td>
        <td><%=rs.getString(10)%></td>
         <td><%=rs.getString(11)%></td>
          <td><%=rs.getString(12)%></td>
           <td><%=rs.getString(13)%></td>
            <td><%=rs.getString(14)%></td>
     
      </tr>
       
  		
  		<%}
  		
  	  }
  	  catch(Exception e)
  	  {
  		  
  	  }
  	  
  	  %>


</body>
</html>