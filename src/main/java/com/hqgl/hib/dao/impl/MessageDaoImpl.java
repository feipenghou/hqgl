package com.hqgl.hib.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hqgl.hib.dao.MessageDao;
import com.hqgl.hib.po.Livemessage;

public class MessageDaoImpl extends HibernateDaoSupport implements MessageDao {
	//�������
	public boolean mess_add(Livemessage livemessage){
		try{
			this.getHibernateTemplate().save(livemessage);
			return true;
		}
		catch(Exception e){
			return false;
		}
	}
	//�鿴
	public List mess(){
		String hql="from Livemessage where panduan=1";
		return this.getHibernateTemplate().find(hql);
	}
	//�޸�
	public List mess_id(String id){
		String hql="from Livemessage where id='"+id+"'";
		return this.getHibernateTemplate().find(hql);
	}
	public boolean mess_update(Livemessage livemessage){
		try{
			this.getHibernateTemplate().update(livemessage);
			return true;
		}
		catch(Exception e){
			return false;
		}
	}
	//ɾ��
	public boolean mess_delete(Livemessage livemessage){
		try{
			this.getHibernateTemplate().update(livemessage);
			return true;
		}
		catch(Exception e){
			return false;
		}
	}
}
