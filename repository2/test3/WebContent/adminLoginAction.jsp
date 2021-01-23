
 <%@ page import="project.ConnectionProvider" %>
  	  <%@ page import="java.sql.*"%>
 <%   String uname=request.getParameter("uname");
 String password=request.getParameter("password");
 
	 try
	 {
		 	Connection con = ConnectionProvider.getCon();
	  		Statement st = 	con.createStatement();
	  		ResultSet rs= st.executeQuery("select * from admin where uname='"+uname+"' and password='"+password+"'");
	  		while(rs.next())
	  		{
	  		
	  			 session.setAttribute("username",uname);
	  			 response.sendRedirect("adminHome.jsp");
	  			
	  		}
	  		
	  		{
	  			 response.sendRedirect("adminLogin.jsp?msg=notexist");
	 		}
	 }
	 catch(Exception e)
	 {
		 
		 System.out.println(e);
		 //response.sendRedirect("userLogin.jsp?msg=invalid");
		
	 }
 
 %> 	  
  	 