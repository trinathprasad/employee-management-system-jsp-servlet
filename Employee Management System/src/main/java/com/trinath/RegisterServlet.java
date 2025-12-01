package com.trinath;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/emp_register")

public class RegisterServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int empId = Integer.parseInt(request.getParameter("empId"));
        String name = request.getParameter("name");
        String designation = request.getParameter("designation");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        long phone = Long.parseLong(request.getParameter("phone"));
        
        
        EmployeeBean eb = new EmployeeBean(empId, name, designation, address, email, phone);	
        int k = new RegisterDAO().register(eb);
		
		
		if(k>0)
		{
			request.setAttribute("success","Registration Successfull..." );
			RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			rd.forward(request, response);
		
		}
		else
		{
			request.setAttribute("fail","Registration Failed..." );
			RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
			rd.forward(request, response);
		
		}
	}

}
