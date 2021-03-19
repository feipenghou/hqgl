package com.hqgl.action;

import java.text.DateFormat;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Lsh {
	private static String ids;
	private static String MaxNO;
	
 	public static String getOn(String id,String table){
		DateFormat df=new SimpleDateFormat("yyyyMMdd");
		String StrDate=df.format(new Date());
		MaxNO=new FindMax().getMaxOn(id, table);
		if(MaxNO==null){
			ids=StrDate+"00001";
		}else{
			String StrNo=MaxNO;
			int on=Integer.parseInt(StrNo.substring(8))+1;
			DecimalFormat dt=new DecimalFormat("00000");
			ids=StrDate+dt.format(on);
		}
		return ids;
	}
	


}
