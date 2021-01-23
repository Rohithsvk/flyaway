<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%  response.setHeader("Cache-Control", "no-cache,no-store, must-revalidate");
    response.setHeader("pragma", "no-cache");
    response.setHeader("Expires","0");
    

    session.invalidate();
    response.sendRedirect("1.jsp"); 
  
    %>
