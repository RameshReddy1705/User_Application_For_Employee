package org.application.credentials.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Attendance
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private int date;
	private double fromTime;
	private double toTime;
	private String reporting;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getDate() {
		return date;
	}
	public void setDate(int date) {
		this.date = date;
	}
	public double getFromTime() {
		return fromTime;
	}
	public void setFromTime(double fromTime) {
		this.fromTime = fromTime;
	}
	public double getToTime() {
		return toTime;
	}
	public void setToTime(double toTime) {
		this.toTime = toTime;
	}
	public String getReporting() {
		return reporting;
	}
	public void setReporting(String reporting) {
		this.reporting = reporting;
	}
	
	
}
