package com.org.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.UserDao;
import com.org.dto.User;

@WebServlet("/login")
public class LoginServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		
		int id = Integer.parseInt(req.getParameter("id"));
		UserDao dao = new UserDao();
		User user = dao.verifyUserById(id);
		
		HttpSession session = req.getSession();
		if (user != null) {
			session.setAttribute("userObj", user);
			
			// Debug statements
	        System.out.println("User authenticated: " + user.getName()); // Print user name
	        System.out.println("Session attribute userObj set: " + session.getAttribute("userObj")); // Print session attribute
			resp.sendRedirect("home.jsp");
		} else {
			session.setAttribute("fail", "Invalid Credentials");
			resp.sendRedirect("login.jsp");
		}
	}
}
