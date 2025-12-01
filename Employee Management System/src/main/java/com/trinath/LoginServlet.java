package com.trinath;

	
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@SuppressWarnings("serial")
@WebServlet("/login")

public class LoginServlet extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		    String name = request.getParameter("name");
	        long phone = Long.parseLong(request.getParameter("phone"));

	        RegisterDAO dao = new RegisterDAO();
	        EmployeeBean eb = dao.login(name, phone);

		
		 if (eb != null) {
			 request.setAttribute("success", "Login Successful! Welcome " + eb.geteName());
             RequestDispatcher rd = request.getRequestDispatcher("success.jsp");
             rd.forward(request, response);
	        } else {
	        	request.setAttribute("error", "Invalid Name or Phone Number!");
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
	        }
	}

}
