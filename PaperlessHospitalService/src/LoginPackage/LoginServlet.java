
package LoginPackage;

import java.io.IOException;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class LoginServlet
 */


public class LoginServlet extends HttpServlet{


public void doGet(HttpServletRequest request, HttpServletResponse response) 
			           throws ServletException, java.io.IOException {
System.out.println("called");
try
{	    

     UserBean user = new UserBean();
     user.setUserName(request.getParameter("un"));
     user.setPassword(request.getParameter("pw"));
    

     user = UserDAO.login(user);
	  System.out.println(user.getId()); 		    
     if (user.isValid())
     {
	        
          HttpSession session = request.getSession(true);	    
          session.setAttribute("currentSessionUserfname",user.getFirstName());
          session.setAttribute("currentSessionUserlname",user.getLastName());
          session.setAttribute("currentSessionUserTypeId",user.getId());
          session.setAttribute("currentSessionUserId",user.getusId());
          response.sendRedirect("https://172.162.152.1:9443/PaperlessHospitalService/userLogged"+user.getId()+".jsp"); //logged-in page      		
     }
	        
     else 
          response.sendRedirect("https://172.162.152.1:9443/PaperlessHospitalService/invalidLogin.jsp"); //error page 
} 
		
		
catch (Throwable theException) 	    
{
     System.out.println(theException); 
}
       }
	}