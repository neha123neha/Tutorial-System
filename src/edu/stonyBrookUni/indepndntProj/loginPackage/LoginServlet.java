package edu.stonyBrookUni.indepndntProj.loginPackage;



import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class LoginController
 */
public class LoginServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String sbuid=request.getParameter("sbuid");
		String netid=request.getParameter("netid");
		
		if(ValidateData.isValid( netid,  sbuid))
		{
			HttpSession session = request.getSession(true); 
			session.setAttribute("user", netid);
			
			response.sendRedirect("success.jsp");
			
			return;  
		}
		else
		{
			response.sendRedirect("error.jsp");
			return;
		} 
		
	}
}