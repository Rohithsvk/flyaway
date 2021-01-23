 <%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%  String airlines= request.getParameter("airlines");  %>
<h2> Showing " <% out.println(airlines); %>" Airlines </h2>

<table cellpadding="15" cellspacing="5" border="5">
      <thead>
        <tr>
         <th>  Id</th>
         <th> AirLine</th>
         <th> Flight <br>Name</th>
          
         
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
  	  <%  
  	  int z=0;
  	  try {
  		Connection con = ConnectionProvider.getCon();
  		Statement st = con.createStatement();
  		ResultSet rs = st.executeQuery("select * from flight where airlines='"+airlines+"'");
  			
  		while(rs.next())
  		{
  			z=1;
  		%>	
  		
        <tr>
      <td><%=rs.getString(1)%></td>
      <td><%=rs.getString(3)%></td> 
      <td><%=rs.getString(2)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(5)%></td>
      <td><%=rs.getString(6)%></td>
      <td><%=rs.getString(7)%></td>
      <td><%=rs.getString(8)%></td>
      
    
     
      </tr>
       
  		
  		<%}
  		
  		if(z==0)
  		{
  			%>
  		<center>  <h3> No Airlines Avaliable in this name </h3> </center>	
  			<%
  		}
  		
  	  }
  	  catch(Exception e)
  	  {
  		  
  	  }
  	  
  	  %>
