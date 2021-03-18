package com.hqgl.hib.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hqgl.hib.dao.CarDao;
import com.hqgl.hib.po.Car;

public class CarDaoImpl extends HibernateDaoSupport implements CarDao {
	//花车服务
	public List car(){
		String hql="from Car n order by n.id asc";
		return this.getHibernateTemplate().find(hql);
	}
	public List car_id(String id){
		String hql="from Car a where a.id='"+id+"'";
		return this.getHibernateTemplate().find(hql);
	}
	public boolean car_update(Car car){
		try{
			this.getHibernateTemplate().update(car);
			return true;
		}
		catch(Exception e){
			return false;
		}
	}
	public boolean car_delete(Car car){
		try{
			this.getHibernateTemplate().update(car);
			return true;
		}
		catch (Exception e){
			return false;
		}
	}
	public boolean car_add(Car car){
		try{
			this.getHibernateTemplate().save(car);
			return true;
		}
		catch(Exception e){
			return false;
		}
	}
	public List ift(String id){
		String hql="from Car b where b.id='"+id+"'";
		System.out.print(hql);
		return this.getHibernateTemplate().find(hql);
	}
}
