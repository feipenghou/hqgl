package com.hqgl.hib.dao.impl;

import com.hqgl.hib.dao.IygDao;
import com.hqgl.hib.po.Ygjbxxb;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

public class IygDaoImpl extends HibernateDaoSupport implements IygDao {

	//添加员工信息
	public boolean yg_add(Ygjbxxb ygjbxxb) {
		try{
			this.getHibernateTemplate().save(ygjbxxb);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	//查询员工信息
	public List yg_display() {
		String hql="from Ygjbxxb y where y.luoji='"+1+"'";
		return this.getHibernateTemplate().find(hql);
	}
	
	//根据条件修改员工信息
	public boolean yg_updateone(Ygjbxxb ygjbxxb) {
		try{
			this.getHibernateTemplate().update(ygjbxxb);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	
	//所根据的id
	public List yg_id(int yid) {
		 String hql="from Ygjbxxb y where y.yid='"+yid+"'";
			return this.getHibernateTemplate().find(hql);
	}

	//修改员工信息
	public boolean yg_update(Ygjbxxb ygjbxxb) {
		try{
			this.getHibernateTemplate().update(ygjbxxb);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	
	
	//删除员工信息（逻辑删除）
	public boolean yg_delete(Ygjbxxb ygjbxxb) {
		try{
			this.getHibernateTemplate().update(ygjbxxb);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	//批量删除员工信息（物理删除）
	public boolean yg_deleteall(Ygjbxxb ygjbxxb) {
		try{
			this.getHibernateTemplate().delete(ygjbxxb);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	//删除员工信息（物理删除）
	public boolean yg_deletecd(Ygjbxxb ygjbxxb) {
		try{
			this.getHibernateTemplate().delete(ygjbxxb);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	//查看已删信息
	public List  yg_yishan() {
		String hql="from Ygjbxxb y where y.luoji='"+0+"'";
		return this.getHibernateTemplate().find(hql);
	}

	

	//恢复员工信息
	public boolean yg_huifu(Ygjbxxb ygjbxxb) {
		try{
			this.getHibernateTemplate().update(ygjbxxb);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	
	
	
}
