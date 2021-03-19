package com.hqgl.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * 注册Msql的连接并实现数据库连接
 */
public class Dao {
	private String className="com.mysql.jdbc.Driver";
	private Connection conn=null;
	private String url="jdbc:mysql://10.130.30.32:3306/hq?characterEncoding=UTF-8";
	private String userName="root";
	private String pwd="mysql";
	public Connection getConnection(){
		try {
			//注册mysql驱动
			Class.forName(className);
			if(conn==null){
				//连接数据库
				conn=DriverManager.getConnection(url,userName,pwd);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}
}
