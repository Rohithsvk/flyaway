<%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
  	  <%  
if(session.getAttribute("email")== null)
{
	response.sendRedirect("1.jsp");
}
 %>
  	  <% 
  	String id			=session.getAttribute("id").toString();
  	String flightName 	= request.getParameter("flightName");
  	String airlines		= request.getParameter("AirLines");
 	String source 		=session.getAttribute("source").toString();
 	String destination	=session.getAttribute("destination").toString();
  	String doj			=session.getAttribute("doj").toString();
  	String time			 = request.getParameter("time");
	String passengers	=session.getAttribute("passengers").toString();

  	String pasName		=session.getAttribute("pasName").toString();
	String pasAge		=session.getAttribute("pasAge").toString();
	String pasPh		=session.getAttribute("pasPh").toString();
	String pasNo		=session.getAttribute("pasNo").toString();
	String total		=session.getAttribute("total").toString();
	
	
	%>
	
	<center> <h1> Your tickets are one click to go </h1>   </center>
	
	<%
	try {
		Connection con = ConnectionProvider.getCon();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("select * from flight where id='"+id+"'");
		while(rs.next())
		{
		%>	
		<form action="paymentAction.jsp" method="post">
		
		<input type="hidden" name="flightname" value="<%=rs.getString(2)%> ">
		<input type="hidden" name="airlines" value="<%=rs.getString(3)%> ">
		<input type="hidden" name="time" value="<%=rs.getString(7)%> ">
		<input type="hidden" name="price" value="<%=rs.getString(8)%> ">
		<input type="submit" value="payment gateway">
		</form>
		<%}
		
	  }
	  catch(Exception e)
	  {
		  System.out.println(e);
		  response.sendRedirect("1.jsp?msg=invalid");
	  }
	  
	  %>	

