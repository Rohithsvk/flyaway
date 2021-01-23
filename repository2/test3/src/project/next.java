package project;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import project.ConnectionProvider;


@WebServlet("/next")
public class next extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public next() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String u = request.getParameter("uname");
		String p = request.getParameter("password");
		
		HttpSession session = request.getSession();
		session.setAttribute("username",u);
		
		PrintWriter out = response.getWriter();
		
		try 
		{
			if(check(u,p))
				{
				
				out.println("Welcome to the opening Page");
				response.sendRedirect("adminHome.jsp");
				}
			else 
				{
				out.println("you have entered an invalid crediantials");
				RequestDispatcher rd= request.getRequestDispatcher("adminLogin.jsp");
				rd.include(request, response);			
				}	
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
		public boolean check(String uname, String password) throws SQLException {
	try {
			Connection con = ConnectionProvider.getCon();
			PreparedStatement st = con.prepareStatement( "select * from admin where uname=?  and password=?");
			st.setString(1, uname);
			st.setString(2, password);
			
			ResultSet rs= st.executeQuery();
			if(rs.next()) {
				return true;
			}
			
			
		}

		catch (Exception e)
		{
			e.printStackTrace();
		}
	return false;
		}
	}


