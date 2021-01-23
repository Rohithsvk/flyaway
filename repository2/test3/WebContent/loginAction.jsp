
 <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
 <%   String email=request.getParameter("email");
 String password=request.getParameter("password");
 
	 try
	 {
		 	Connection con = ConnectionProvider.getCon();
	  		Statement st = 	con.createStatement();
	  		ResultSet rs= st.executeQuery("select * from user where email='"+email+"' and password='"+password+"'");
	  		while(rs.next())
	  		{
	  		
	  			 session.setAttribute("email",email);
	  			 response.sendRedirect("userHomePage.jsp");
	  			
	  		}
	  		
	  		{
	  			 response.sendRedirect("userLogin.jsp?msg=notexist");
	 		}
	 }
	 catch(Exception e)
	 {
		 
		 System.out.println(e);
		 //response.sendRedirect("userLogin.jsp?msg=invalid");
		
	 }
 
 %> 	  
  	 