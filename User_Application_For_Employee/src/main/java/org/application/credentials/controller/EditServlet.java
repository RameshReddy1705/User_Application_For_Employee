package org.application.credentials.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.application.credentials.dao.UserDao;
import org.application.credentials.dto.User;

@WebServlet("/edit")
public class EditServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		long phone=Long.parseLong(req.getParameter("phone"));
		String password=req.getParameter("password");
		int age =Integer.parseInt(req.getParameter("age"));
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		UserDao dao= new UserDao();
		User u=new User();
		u.setId(id);
		u.setAge(age);
		u.setEmail(email);
		u.setName(name);
		u.setPassword(password);
		u.setPhone(phone);
		u=dao.updateUser(u);
		PrintWriter writer=resp.getWriter();
		writer.write("<html><body><h1>You are Updated with the id :"+u.getId()+"</h1></body></html>");
		RequestDispatcher dispatcher=null;
		dispatcher=req.getRequestDispatcher("home.jsp");
		dispatcher.include(req, resp);

	}
	
}
