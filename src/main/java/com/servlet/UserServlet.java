package com.servlet;

import java.io.IOException;
//import java.io.PrintWriter;

import com.User.UserDetails;
import com.connection.Connector;
import com.dao.UserDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 String name = req.getParameter("fname");
		 String email = req.getParameter("uemail");
		 String pass = req.getParameter("upassword");
		 
		 UserDetails us = new UserDetails(name,email,pass);
		 
		 UserDao dao = new UserDao(Connector.getCon());
		 boolean f =  dao.addUser(us);
//		 PrintWriter out = resp.getWriter();
		 HttpSession session = req.getSession();
		 if(f) {
			  session.setAttribute("reg-success","Registration Successfully.."  );
			  resp.sendRedirect("register.jsp");
			 
		 }else {
			 session.setAttribute("failed-msg","Something went wrong on server.."  );
			 resp.sendRedirect("register.jsp");
			
			  
		}
	}
}
