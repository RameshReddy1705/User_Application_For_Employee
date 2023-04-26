  package org.application.credentials.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.application.credentials.dao.UserDao;
import org.application.credentials.dto.User;
@WebServlet("/reg")
public class RegisterServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		long phone=Long.parseLong(req.getParameter("phone"));
		String password=req.getParameter("password");
		int age =Integer.parseInt(req.getParameter("age"));
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		UserDao dao= new UserDao();
		User u=new User();
		u.setAge(age);
		u.setEmail(email);
		u.setName(name);
		u.setPassword(password);
		u.setPhone(phone);
		u=dao.saveUser(u);
		PrintWriter writer=resp.getWriter();
		RequestDispatcher dispatcher=null;
		writer.write("<html><body><h1>You are registered with the id :"+u.getId()+"  Now You Can LogIn</h1></body></html>");
		dispatcher=req.getRequestDispatcher("login.jsp");
		dispatcher.include(req, resp);
//		HttpSession session=req.getSession();
//		session.invalidate();
//		RequestDispatcher dispatcher=req.getRequestDispatcher("view.jsp");
//		dispatcher.include(req, resp);
	}
}
