package com.hqgl.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * ע��Msql�����Ӳ�ʵ�����ݿ�����
 */
public class Dao {
	private String className="com.mysql.jdbc.Driver";
	private Connection conn=null;
	private String url="jdbc:mysql://10.130.30.32:3306/hq?characterEncoding=UTF-8";
	private String userName="root";
	private String pwd="mysql";
	public Connection getConnection(){
		try {
			//ע��mysql����
			Class.forName(className);
			if(conn==null){
				//�������ݿ�
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
