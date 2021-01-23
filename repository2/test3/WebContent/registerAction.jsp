
<%@ page import="project.ConnectionProvider" %>
    <%@ page import="java.sql.*"%>
    
    
<%
String fname =  request.getParameter("fname");
String mname =  request.getParameter("mname");
String lname =  request.getParameter("lname");
String gender =  request.getParameter("gender");
String mobile =  request.getParameter("mobile");
String country =  request.getParameter("country");
String email =  request.getParameter("email");
String password =  request.getParameter("password");

HttpSession session3= request.getSession();
session.setAttribute("email", email);

try
{
	Connection con = ConnectionProvider.getCon();
	Statement st = con.createStatement();
	st.executeUpdate("insert into user values('"+fname+"','"+mname+"','"+lname+"','"+gender+"','"+mobile+"','"+country+"','"+email+"','"+password+"')");
	response.sendRedirect("continueBooking.jsp?msg=done");
}

catch (Exception e)
{
	out.println(e);
	response.sendRedirect("continueBooking.jsp?msg=wrong");
}

%>