package com.trinath;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class RegisterDAO {

	int k=0;
	Connection con=null;
	public int register(EmployeeBean eb)
	{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			 con= DriverManager.getConnection
			("jdbc:oracle:thin:@localhost:1521:ORCL", "ADVDB11AM", "TRI");
			PreparedStatement ps=con.prepareStatement
					("insert into emp_info11 values(?,?,?,?,?,?)");
			ps.setInt(1, eb.geteId());
			ps.setString(2, eb.geteName());
			ps.setString(3, eb.getDesg());
			ps.setString(4, eb.getAddress());
			ps.setString(5, eb.getMailId());
			ps.setLong(6, eb.getPhno());
			 k = ps.executeUpdate();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return k;
	}
	public EmployeeBean login(String name, long phno) {
		EmployeeBean eb=null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			 con= DriverManager.getConnection
			("jdbc:oracle:thin:@localhost:1521:ORCL", "ADVDB11AM", "TRI");
			PreparedStatement ps=con.prepareStatement
					("select * from emp_info11 where ename=? and phno=?");
		    ps.setString(1, name);
		    ps.setLong(2, phno);
		    ResultSet rs = ps.executeQuery();
		    if(rs.next())
		    {
		    	eb=new EmployeeBean(rs.getInt(1), rs.getString("ename"), rs.getString(3), rs.getString(4), rs.getString(5), rs.getLong(6));
		    }
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		return eb;
		
	}
}
