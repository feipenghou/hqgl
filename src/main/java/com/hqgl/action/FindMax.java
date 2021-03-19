package com.hqgl.action;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class FindMax {
	
	private String MaxOn;
	
	public String getMaxOn(String id,String table)
	{
		Connection conn=new Dao().getConnection();
		String sql="select Max("+id+") from "+table;
		try {
			Statement st=conn.createStatement();
			ResultSet rs=st.executeQuery(sql);
			while(rs.next())
			{
				MaxOn=rs.getString(1);
			}
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return  MaxOn;
	}

}
