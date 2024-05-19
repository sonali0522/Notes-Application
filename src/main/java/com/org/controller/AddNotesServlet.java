package com.org.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.org.dao.UserDao;
import com.org.dto.Notes;
import com.org.dto.User;
@WebServlet("/addnotes")
public class AddNotesServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String title = req.getParameter("title");
		String des = req.getParameter("description");
		
		Notes note = new Notes();
		note.setTittle(title);
		note.setDescription(des);
		
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("userData");
		
		List<Notes> notes = new ArrayList<Notes>();
		notes.add(note);
		
		user.setNotes(notes);
		note.setUser(user);
		
		UserDao dao = new UserDao();
		dao.saveAndUpdateUser(user);
		
		session.setAttribute("addSuccess", "Notes Added Successfully");
		resp.sendRedirect("home.jsp");
	}

}
