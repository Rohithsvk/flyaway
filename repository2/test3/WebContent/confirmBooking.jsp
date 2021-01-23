 <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Tickets</title>
</head>
<body>

<%  if(session.getAttribute("email")== null)
{
	response.sendRedirect("1.jsp");
}
 %>

<h3> Hi ${username}, Welcome to FlyAway AirLines: </h3> <br>

<h4> Please check the following Details and proceed the Payment  </h4><br>

<%
String id=session.getAttribute("id").toString();

%>
 SESSION ID: <% out.println(id); 
HttpSession session1= request.getSession();

	String source 		=session.getAttribute("source").toString();
	String destination	=session.getAttribute("destination").toString();
	String doj			=session.getAttribute("doj").toString();
	String passengers	=session.getAttribute("passengers").toString();

%> <br>
<% 
int total=0;
try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from flight where id='"+id+"'");
		while(rs.next())
		{
		%>	
		 <form action="bookingAction.jsp" method="post"> 
		<input type="hidden" name="flightName" value=<%=rs.getString(2)%> >
		<input type="hidden" name="AirLines" value=<%=rs.getString(3)%> >
		<input type="hidden" name="doj" value=<%=rs.getString(6)%> >
		<input type="hidden" name="time" value=<%=rs.getString(7)%> >
		<input type="hidden" name="price" value=<%=rs.getString(8)%> >
		
	
    <tr>
      
        	 Flight Name: 	 <td><%=rs.getString(2)%></td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     		 Airlines: 		<td><%=rs.getString(3)%></td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     		 Source:		<td><%=rs.getString(4)%></td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
        	 Destination: 	<td><%=rs.getString(5)%></td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	 Date	 		<td><%=rs.getString(6)%></td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       		 Time: 			<td><%=rs.getString(7)%></td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
       		 Price: 		<td><%=rs.getInt(8)%></td>
  				<%  total =rs.getInt(8); %>
    </tr> 
   
		<%}
		
	  }
	  catch(Exception e)
	  {
		  
	  }
	  
	  %>
	  
	  
  <h3> Check Passenger Details:</h3>
<%
String pasName=request.getParameter("pasName");


String pasAge=request.getParameter("pasAge");


String pasPh=request.getParameter("pasPh");


String pasNo = request.getParameter("pasNo");

int no= Integer.parseInt(pasNo);

total =no* total;

%>
<%
HttpSession session2= request.getSession();
session.setAttribute("pasName",pasName);
session.setAttribute("pasNo",pasNo);
session.setAttribute("pasPh",pasPh);
session.setAttribute("pasAge",pasAge);
session.setAttribute("total",total);
 
 %>


 Primary Passenger name: 	<% out.print(pasName);   %> <br>
 Primary Passenger Age		<% out.print(pasAge);   %>  <br>
 Primary Passenger Phone No:<% out.print(pasPh);   %>  	<br>
 No of passengers:			<% out.print(no);   %>  	<br>
	<h1> Total Price:		<% out.print(total);   %> 	</h1>	
	</form>

<h2> <a href="bookingAction.jsp"> Pay Here</a> </h2>
</body>
</html>

