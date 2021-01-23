<%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
  	<%  if(session.getAttribute("email")== null)
{
	response.sendRedirect("1.jsp");
}
 %>  
  	   <% 
  	String id			=session.getAttribute("id").toString();
  	String flightname 	= request.getParameter("flightname");
  	String airlines		= request.getParameter("airlines");
  	String price		= 	request.getParameter("price");
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
	String email		=session.getAttribute("email").toString();
	
	out.println(id);
	out.println(flightname);
	out.println(airlines);
	out.println(doj);
	out.println(time);
	out.println(total);
	out.println(price);
	out.println(destination);
	out.println(pasName);
	out.println(pasNo);
	out.println(pasPh);
	out.println(pasAge);
	out.println(total);
	out.println(email);
	
	HttpSession session2= request.getSession();
	session.setAttribute("flightname",flightname);
	session.setAttribute("airlines",airlines);
	session.setAttribute("time",time);
	session.setAttribute("price",price);
	session.setAttribute("total",total);
	 
	
	
try{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps =con.prepareStatement("insert  into book (email,flightname,airlines,source,destination,date,time,price,pasName,pasAge,pasPh,pasNo,totalprice)values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,email);
	ps.setString(2,flightname);
	ps.setString(3,airlines);
	ps.setString(4, source);
	ps.setString(5,destination);
	ps.setString(6,doj);
	ps.setString(7,time);
	ps.setString(8,price);
	ps.setString(9,pasName);
	ps.setString(10, pasAge );
	ps.setString(11,pasPh);
	ps.setString(12,pasNo);
	ps.setString(13,total);
	
	
	

	ps.executeUpdate();
	response.sendRedirect("Booked.jsp?msg=done");
}
catch (Exception e)
{
	System.out.println(e);
	response.sendRedirect("Booked.jsp?msg=wrong");
}
%>
	