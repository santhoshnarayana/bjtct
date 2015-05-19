package com.bjtct.connection;

import java.sql.Connection;
import java.sql.DriverManager;

import com.mysql.jdbc.Driver;

public  class JdbcConnection 
{
	public static Connection getConnection(){
		
		String url = "jdbc:mysql://localhost:3306/bjtctdb";
		String username="root";
		String password = "root";
		Connection con = null;
		try {
		DriverManager.registerDriver(new Driver());
		con =  DriverManager.getConnection(url,username,password);
		
		}catch(Exception e){
			e.printStackTrace();
		}
		return con;
		
	}
	
	
	
}
	
