 <%@ include file="userheader.jsp" %>
   
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Profile</title>
</head>
<body>

<%  if(session.getAttribute("email")== null)
{
	response.sendRedirect("1.jsp");
}
 %>
<% String email= session.getAttribute("email").toString(); %>
<h3> hi ${email }</h3>
<% String msg=request.getParameter("msg");
	if("done".equals(msg))
	{
%>
<h3 class="alert"> Successfully Updated!</h3>
<%} %>
<% if("wrong".equals(msg))
{ %>
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%} %>

 <table cellpadding="13" cellspacing="5" border="5">
      <thead>
        <tr>
         <th> first name</th>
         <th> middle Name</th>
          <th> Last name</th>
         
          <th> Gender</th>
          <th> mobile</th>
           <th> Country</th>
          <th> Email</th>
        
          
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
  		ResultSet rs = st.executeQuery("select * from user where email='"+email+"'");
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
 
      <td><a href="editProfile.jsp?email=<%=rs.getString(7)%>"> Edit</a></td>
      </tr>
       
  		
  		<%}
  		
  	  }
  	  catch(Exception e)
  	  {
  		  
  	  }
  	  
  	  %>
      

</body>
</html>