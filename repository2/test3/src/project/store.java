package project;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class store
 */
@WebServlet("/store")
public class store extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public store() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String source=request.getParameter("source");
		String destination=request.getParameter("destination");
		String doj= request.getParameter("doj");
		String passengers=request.getParameter("passengers");
		
		HttpSession session= request.getSession();
		session.setAttribute("source",source);
		
		session.setAttribute("destination",destination);
		session.setAttribute("doj",doj);
		session.setAttribute("passengers",passengers);
	
		
		    
		
		PrintWriter out = response.getWriter();
		
		RequestDispatcher rd= request.getRequestDispatcher("flightCheck.jsp");
		rd.forward(request, response);	
	}

}
