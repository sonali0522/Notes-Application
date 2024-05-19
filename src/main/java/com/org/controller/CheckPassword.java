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
@WebServlet("/changePassword")
public class CheckPassword extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String oldPassword = req.getParameter("oldPassword");
		int id = Integer.parseInt(req.getParameter("id"));
		String newPassword = req.getParameter("newPassword");
		String confirmPassword = req.getParameter("confirmPassword");
		
		UserDao dao = new UserDao();
		User u = dao.fetchUserById(id);
		
		if(u.getPassword().equals(oldPassword))
		{
			if(newPassword.equals(confirmPassword))	{
				dao.updateUserPasswordById(id, newPassword);
				
				HttpSession session = req.getSession();
                session.setAttribute("success", "Password changed successfully!");
				resp.sendRedirect("home.jsp");
			}
			else {
				HttpSession session = req.getSession();
				session.setAttribute("fail", "Password Mismatch!");
				resp.sendRedirect("changePassword.jsp?id=" + id);

			}
		}
		else
		{
			HttpSession session = req.getSession();
			session.setAttribute("fail", "You have entered wrong password");
			resp.sendRedirect("changePassword.jsp?id=" + id);

		}
		
	}

}
