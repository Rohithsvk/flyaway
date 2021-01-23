 <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
  	  
 <% 
 	String id= request.getParameter("id");
  	String flightname =request.getParameter("flightname");
  	String airline=request.getParameter("Airline");
  	String price=request.getParameter("price");
  	String source=request.getParameter("source");
 	String destination=request.getParameter("destination");
 	String time=request.getParameter("time");
 	String doj=request.getParameter("doj");
  	
  	
  	try{
  		Connection con = ConnectionProvider.getCon();
  	  		Statement st = 	con.createStatement();
  	  		st.executeUpdate("update flight set flightname='"+flightname+"', airlines='"+airline+"',source='"+source+"',destination='"+destination+"',doj='"+doj+"',time='"+time+"', price='"+price+"'  where id='"+id+"'");
  	  		
  	  		response.sendRedirect("flightList.jsp?msg=done");
  	}
  	catch (Exception e)
  	{
  	System.out.println(e);
	response.sendRedirect("flightList.jsp?msg=wrong");
  	}
  	
  	
  	  %>