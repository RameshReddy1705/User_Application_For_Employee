package org.application.credentials.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.application.credentials.dao.AttendanceDao;
import org.application.credentials.dao.UserDao;
import org.application.credentials.dto.Attendance;
import org.application.credentials.dto.User;
@WebServlet("/Atte")
public class AttendanceServlet extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int date=Integer.parseInt(req.getParameter("date"));
		double fromTime=Double.parseDouble(req.getParameter("fromtime"));
		double toTime=Double.parseDouble(req.getParameter("totime"));
		String reporting=req.getParameter("reporting");
//		UserDao dao=new UserDao();
//		User u=new User();
		AttendanceDao daoAtt=new AttendanceDao();
		Attendance a=new Attendance();
		a.setDate(date);
		a.setFromTime(fromTime);
		a.setToTime(toTime);
		a.setReporting(reporting);
//		u=dao.updateUser(u);
		
		a=daoAtt.updateAttendance(a);
		PrintWriter writer=resp.getWriter();
		RequestDispatcher dispatcher=null;
		writer.write("<html><body><h1>Your Attendance Successfully Done:"+a.getId()+"</h1></body></html>");
		dispatcher=req.getRequestDispatcher("home.jsp");
		dispatcher.include(req, resp);
	}
}
