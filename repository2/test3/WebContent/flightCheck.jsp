 
     <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Flight Details </title>
</head>
<body>
<center> <h1> Flyaway Airlines </h1>   </center>

 <table cellpadding="13" cellspacing="5" border="5"> 
      <thead>
        <tr>
         <th> Flight<br> Name</th>
         <th> Flight <br> company </th>
          <th>Source</th>
          <th> Destination</th>
          <th> Date </th>
          <th> Time</th>
          <th>Price</th>
          <th> Book Now</th>
        </tr>
      </thead>
    </table>
	
	
<table cellpadding="13" cellspacing="5" border="5">
      <tbody>
       
        
      <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
  	  <%
  	 int z=0;
  	  try {
  		
  		String source =  request.getParameter("source");
  		String destination =  request.getParameter("destination");
  		Connection con = ConnectionProvider.getCon();
  		Statement st = con.createStatement();
  		ResultSet rs = st.executeQuery("select * from flight where source='"+source+"' and destination='"+destination+"'");
  		while(rs.next())
  		{
  			z=1;
  		%>	
  		
        <tr>
          <td><%=rs.getString(2)%></td>
          <td><%=rs.getString(3)%></td>
          <td><%=rs.getString(4)%></td>
          <td><%=rs.getString(5)%></td>
          <td><%=rs.getString(6)%></td>
           <td><%=rs.getString(7)%></td>
           <td><%=rs.getInt(8)%></td>
          <td><a href="check.jsp?id=<%=rs.getInt(1)%>"> Book Now</a></td>
        </tr>
        
  		<%
  		}
  		if(z==0){
  			%>
  		<center>  <h3> No Flights Avaliable in this route </h3> </center>	
  			<%
  		}
  		
  		
  	  }
  	  catch(Exception e)
  	  {
  		  
  	  }
  	  
  	  %>
    
	   
	  
</body>
</html>

