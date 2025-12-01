package com.trinath;

import java.io.Serializable;

@SuppressWarnings("serial")
public class EmployeeBean implements Serializable{
	
	

	private int eId;
	private String eName,desg,address,mailId;
	private long phno;
	
	public EmployeeBean(int eId, String eName, String desg, String address, String mailId, long phno) {
		super();
		this.eId = eId;
		this.eName = eName;
		this.desg = desg;
		this.address = address;
		this.mailId = mailId;
		this.phno = phno;
	}
	
	
	
	public int geteId() {
		return eId;
	}
	public void seteId(int eId) {
		this.eId = eId;
	}
	public String geteName() {
		return eName;
	}
	public void seteName(String eName) {
		this.eName = eName;
	}
	public String getDesg() {
		return desg;
	}
	public void setDesg(String desg) {
		this.desg = desg;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMailId() {
		return mailId;
	}
	public void setMailId(String mailId) {
		this.mailId = mailId;
	}
	public long getPhno() {
		return phno;
	}
	public void setPhno(long phno) {
		this.phno = phno;
	}
	
	
}