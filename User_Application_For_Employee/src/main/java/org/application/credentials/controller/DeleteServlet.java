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
@WebServlet("/delete")
public class DeleteServlet extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		UserDao dao= new UserDao();
		dao.deleteUserById(id);
		HttpSession session=req.getSession();
		session.invalidate();
		PrintWriter writer=resp.getWriter();
		writer.write("<html><body><h1>Logged Out</h1></body></html>");
		RequestDispatcher dispatcher=req.getRequestDispatcher("login.jsp");
		dispatcher.include(req, resp);
	}
}
