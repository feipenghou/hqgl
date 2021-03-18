package com.hqgl.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//注册Msql的连接并实现数据库连接
public class Dao {
	private String className="com.mysql.jdbc.Driver";
	private Connection conn=null;
	private String url="jdbc:mysql://localhost:3306/hq?characterEncoding=UTF-8";
	private String userName="root";
	private String pwd="";
	
	public Connection getConnection()
	{
		try {
			Class.forName(className);//注册mysql驱动   *******
			//System.out.println("驱动注册成功!");
			if(conn==null)
			{
				conn=DriverManager.getConnection(url,userName,pwd);//连接数据库********
				//System.out.println("数据库连接成功！");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void main(String[] args) {
		new Dao().getConnection();
	}

}
