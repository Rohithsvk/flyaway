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

<%  
if(session.getAttribute("email")== null)
{
	response.sendRedirect("1.jsp");
}
 %>

<h3> Hii!! ${email}, Welcome to FlyAway AirLines: </h3> <br>

<h4> You have to enter the passenger details here  </h4><br>
<%
String id=session.getAttribute("id").toString();
%>
 SESSION ID: <%  out.println(id); 
HttpSession session1= request.getSession();
	String source 		=session.getAttribute("source").toString();
	String destination	=session.getAttribute("destination").toString();
	String doj			=session.getAttribute("doj").toString();
	String passengers	=session.getAttribute("passengers").toString();

%> 
<br>
<% try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from flight where id='"+id+"'");
		while(rs.next())
		{
		%>	
		
    <tr>
      
        	 Flight Name: 	 <td><%=rs.getString(2)%></td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     		Airlines: 		<td><%=rs.getString(3)%></td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     		 Source:		<td><%=rs.getString(4)%></td> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
        	Destination: 	<td><%=rs.getString(5)%></td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        	Date	 		<td><%=rs.getString(6)%></td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       		 Time: 			<td><%=rs.getString(7)%></td>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
       		  Price: 		<td><%=rs.getInt(8)%></td>
       
  
    </tr>
		<%
		}
		
	  }
	  catch(Exception e)
	  {
		  
	  }
	  
	  %>	  
  <h3> Enter Passenger Details:</h3>


	<form action="confirmBooking.jsp" method="post">
	 Enter Primary Passenger Name: <input type="text" name="pasName" maxlength="20" required> <br> <br>
	 Enter Primary Passenger Age: <input type="text" pattern="[1234567890]{2}" maxlength="2" name="pasAge" required> <br> <br>
	 Phone.No <input type="text" maxlength="10" placeholder="1234567890" pattern="[123456789][0-9]{9}" name="pasPh" required> <br> <br>
	 No. Of Passengers: <input type="text" maxlength="1" pattern="[123456789]{1}" name="pasNo"	value="<% out.print(passengers);%>" required >
	
	<input type="submit" value="Proceed to pay">
	
	</form>
</body>
</html>