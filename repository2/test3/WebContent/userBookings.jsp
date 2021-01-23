 <%@ include file="userheader.jsp" %>
   
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MyBookings</title>

<%  if(session.getAttribute("email")== null)
{
	response.sendRedirect("1.jsp");
}
 %>
<% String email= session.getAttribute("email").toString();   %>

</head>
<body>
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
        <th> booking Id </th>
         <th> email</th>
         <th> Flight <br>Name</th>
          <th> AirLine</th>
         
          <th>Source</th>
          <th> Destination</th>
           <th> Date</th>
          <th> Time</th>
          <th>Price</th>
          <th> name </th>
          <th>age </th>
          <th> mobile </th>
          <th> No of <br> 
          passengers</th>
          <th> total </th>
          
          
          
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
  		ResultSet rs = st.executeQuery("select * from book where email='"+email+"'");
  		while(rs.next())
  		{
  		%>	
  		
        <tr>
         <td><%=rs.getString(14)%></td> 
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
                
  
      </tr>
       
  		
  		<%}
  		
  	  }
  	  catch(Exception e)
  	  {
  		  
  	  }
  	  
  	  %>
      

</body>
</html>