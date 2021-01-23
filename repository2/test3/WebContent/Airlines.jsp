  <%@ include file="header.jsp" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Airlines List</title>
</head>
<body>
<%  if(session.getAttribute("username")== null)
{
	response.sendRedirect("1.jsp");
}
 %>

 <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
  	  <% try {
  		Connection con = ConnectionProvider.getCon();
  		Statement st = con.createStatement();
  		ResultSet rs = st.executeQuery("select airlines from flight");
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