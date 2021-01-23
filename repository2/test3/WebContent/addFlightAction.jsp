 <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
  	  
  	  
  	  <% String id=request.getParameter("id");
String flightname =request.getParameter("flightname");
String airlines=request.getParameter("airlines");
String source=request.getParameter("source");
String destination=request.getParameter("destination");
String date=request.getParameter("date");
String time=request.getParameter("time");
String price=request.getParameter("price");



try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps =con.prepareStatement("insert  into flight values(?,?,?,?,?,?,?,?)");
	ps.setString(1,id);
	ps.setString(2,flightname);
	ps.setString(3,airlines);
	ps.setString(4, source);
	ps.setString(5,destination);
	ps.setString(6,date);
	ps.setString(7,time);
	ps.setString(8,price);

	ps.executeUpdate();
	response.sendRedirect("addFlight.jsp?msg=done");
}
catch (Exception e)
{
	System.out.println(e);
	response.sendRedirect("addFlight.jsp?msg=wrong");
}
%>
  	  