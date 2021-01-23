<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Ticket Details</title>


</head>
<body>


<%  
if(session.getAttribute("email")== null)
{
	response.sendRedirect("1.jsp");
}
 %>

<% 
String msg= request.getParameter("msg");
if("done".equals(msg))
{
%>
<h2> Sucessfully ticket Booked</h2>
<h1> Have a safe Journey..</h1>

<%}
if("wrong".equals(msg))
{
%>
<h2> Something went wrong</h2>
<%} %>
<br>
	  
  	   <% 
  	String id			=session.getAttribute("id").toString();
  	String flightname 	= session.getAttribute("flightname").toString();
  	String airlines		= session.getAttribute("airlines").toString();
  	String price		= session.getAttribute("price").toString();
 	String source 		=session.getAttribute("source").toString();
 	String destination	=session.getAttribute("destination").toString();
  	String doj			=session.getAttribute("doj").toString();
  	String time			 = session.getAttribute("time").toString();
	String passengers	=session.getAttribute("passengers").toString();

  	String pasName		=session.getAttribute("pasName").toString();
	String pasAge		=session.getAttribute("pasAge").toString();
	String pasPh		=session.getAttribute("pasPh").toString();
	String pasNo		=session.getAttribute("pasNo").toString();
	String total		=session.getAttribute("total").toString();
	String email		=session.getAttribute("email").toString();
	
	%>
	
<h3> 

<p style="padding: 10px; border: 2px solid red;"> Flight Name: 	 <% out.println(flightname);   %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
	 Airline Name :   <% out.println(airlines);  %> <br> <br>
	 <hr>
	 Source 			<% out.println(source) ; %>	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	Destination  		<% out.println(destination);  %><br> <br>
	Date of journey:	<% out.println(doj);  %>	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	Time:					<%out.println(time);  %><br> <br>
	Price:					 <%  out.println(price); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	email:			<%  out.println(email); %><br> <br>
	<hr>
 	PasName				<% 	out.println(pasName);  %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		PasNo:			 <%  out.println(pasNo); %><br> <br>
		pasPh					 <%  out.println(pasPh); %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			pasAge				 <%   out.println(pasAge);%><br> <br>
			<hr>
				Total:			 <%  out.println(total); %>
	 			
			
	</h3>
	

  	  
    
<br> <%  session.invalidate(); %>
<h3>  <a href="1.jsp"> back</a>  </h3>
</body>
</html>