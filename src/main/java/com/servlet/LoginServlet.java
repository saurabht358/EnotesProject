package com.servlet;

import java.io.IOException;

import com.User.UserDetails;
import com.connection.Connector;
import com.dao.UserDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("uemail");
		String pass = req.getParameter("upassword");
		
		UserDetails us = new UserDetails();
		us.setEmail(email);
		us.setPassword(pass);
		UserDao userDao = new UserDao(Connector.getCon());
		HttpSession session = req.getSession();
		UserDetails user = userDao.loginUser(us);
		if (user!=null) {
			session.setAttribute("userD", user);
			resp.sendRedirect("home.jsp");
		}else {
			session.setAttribute("failed-msg","Incorrect Email Or Passwords.."  );
			resp.sendRedirect("login.jsp");
		}
		 
	}
	
}
