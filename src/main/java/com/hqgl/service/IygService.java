package com.hqgl.service;

import com.hqgl.hib.po.Ygjbxxb;

import java.util.List;

public interface IygService {

	//添加员工信息
	public boolean  yg_add(Ygjbxxb ygjbxxb);
	
	//批量添加员工信息
	public boolean  yg_addall(Ygjbxxb ygjbxxb);
	
	
	//所根据的id
	public List yg_id(int yid);

	//查询员工信息：
	public List yg_display();
	
	//根据条件查看员工信息： 
	public List yg_cha(int yid, String yname);
	
	//根据条件查询的修改
	public boolean yg_updateone(Ygjbxxb ygjbxxb);
	
	//根据id修改员工信息： 
	public boolean yg_update(Ygjbxxb ygjbxxb);
	
	//删除员工信息（逻辑删除）
	public boolean yg_delete(Ygjbxxb ygjbxxb);
	
	//彻底删除员工信息
	public boolean yg_deletecd(Ygjbxxb ygjbxxb);
	
	
	//批量删除员工信息（物理删除）
	public boolean yg_deleteall(Ygjbxxb ygjbxxb);
	
	
	//查看已删员工信息
	public List  yg_yishan();
	
	//恢复已删员工信息
	public boolean yg_huifu(Ygjbxxb ygjbxxb);
	
}
