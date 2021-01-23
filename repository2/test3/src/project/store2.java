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
 * Servlet implementation class store2
 */
@WebServlet("/store2")
public class store2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public store2() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		HttpSession session= request.getSession();
		
		String source 		=session.getAttribute("source").toString();
		
		String destination	=session.getAttribute("destination").toString();
		String doj			=session.getAttribute("doj").toString();
		String passengers	=session.getAttribute("passengers").toString();
		
		PrintWriter out = response.getWriter();
		out.println(doj);
		
		RequestDispatcher rd= request.getRequestDispatcher("flightCheck2.jsp");
		rd.forward(request, response);	
		
	}

}
