package com.hqgl.service.impl;

import com.hqgl.hib.dao.IygDao;
import com.hqgl.hib.po.Ygjbxxb;
import com.hqgl.service.IygService;

import java.util.List;

public class IygServiceImpl implements IygService {
	
	//住入dao层 

	private IygDao iygdao;
	public IygDao getIygdao() {
		return iygdao;
	}

	public void setIygdao(IygDao iygdao) {
		this.iygdao = iygdao;
	}
	
	
	//添加员工信息
	public boolean yg_add(Ygjbxxb ygjbxxb) {
		return this.getIygdao().yg_add(ygjbxxb);
	}

	//批量添加员工信息
	public boolean yg_addall(Ygjbxxb ygjbxxb) {
		return this.getIygdao().yg_addall(ygjbxxb);
	}
	
	//查询员工信息
	public List yg_display() {
		return this.getIygdao().yg_display();
	}


	//所根据的id
	public List yg_id(int yid) {
		return this.getIygdao().yg_id(yid);
	}

	
	//修改员工信息
	public boolean yg_update(Ygjbxxb ygjbxxb) {
		return this.getIygdao().yg_update(ygjbxxb);
	}

	
	//根据条件查询员工信息
	public List yg_cha(int yid, String yname) {
		return this.getIygdao().yg_cha(yid, yname);
	}

	//根据条件修改
	public boolean yg_updateone(Ygjbxxb ygjbxxb) {
		return this.getIygdao().yg_updateone(ygjbxxb);
	}
	
	
	//删除员工信息
	public boolean yg_delete(Ygjbxxb ygjbxxb) {
		return this.getIygdao().yg_delete(ygjbxxb);
	}
	
	

	//批量删除员工信息（物理性删除）
	public boolean yg_deleteall(Ygjbxxb ygjbxxb) {
		return this.getIygdao().yg_deleteall(ygjbxxb);
	}

	//删除员工信息（物理性删除）
	public boolean yg_deletecd(Ygjbxxb ygjbxxb) {
		return this.getIygdao().yg_deletecd(ygjbxxb);
	}
	
	

	//查询已删员工信息
	public List yg_yishan() {
		return this.getIygdao().yg_yishan();
	}

	

	
	//恢复员工信息
	public boolean yg_huifu(Ygjbxxb ygjbxxb) {
		return this.getIygdao().yg_huifu(ygjbxxb);
	}

	
	


}
