package com.hqgl.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

//ע��Msql�����Ӳ�ʵ�����ݿ�����
public class Dao {
	private String className="com.mysql.jdbc.Driver";
	private Connection conn=null;
	private String url="jdbc:mysql://localhost:3306/hq?characterEncoding=UTF-8";
	private String userName="root";
	private String pwd="";
	
	public Connection getConnection()
	{
		try {
			Class.forName(className);//ע��mysql����   *******
			//System.out.println("����ע��ɹ�!");
			if(conn==null)
			{
				conn=DriverManager.getConnection(url,userName,pwd);//�������ݿ�********
				//System.out.println("���ݿ����ӳɹ���");
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
