package org.application.credentials.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.application.credentials.dto.Attendance;
import org.application.credentials.dto.User;

public class AttendanceDao
{
	EntityManagerFactory factory=Persistence.createEntityManagerFactory("dev");
	EntityManager manager=factory.createEntityManager();
	public Attendance saveAttendance(Attendance attendance)
	{
		EntityTransaction transaction=manager.getTransaction();
		manager.persist(attendance);
		transaction.begin();
		transaction.commit();
		return attendance;
	}
	public Attendance updateAttendance(Attendance attendance)
	{
		EntityTransaction transaction=manager.getTransaction();
		manager.merge(attendance);
		transaction.begin();
		transaction.commit();
		return attendance;
	}
}
