package com.hqgl.hib.dao.impl;

import com.hqgl.hib.dao.CarDao;
import com.hqgl.hib.po.Car;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

public class CarDaoImpl extends HibernateDaoSupport implements CarDao {
	//????????
	public List car(){
		String hql="from Car n where n.panduan='1' order by n.id asc";
		return this.getHibernateTemplate().find(hql);
	}
	public List car_id(String id){
		String hql="from Car a where a.id='"+id+"' and a.panduan='1'";
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
}
