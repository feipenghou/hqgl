package com.hqgl.hib.dao.impl;

import com.hqgl.hib.dao.IygDao;
import com.hqgl.hib.po.Ygjbxxb;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

public class IygDaoImpl extends HibernateDaoSupport implements IygDao {

	//���Ա����Ϣ
	public boolean yg_add(Ygjbxxb ygjbxxb) {
		try{
			this.getHibernateTemplate().save(ygjbxxb);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	//��ѯԱ����Ϣ
	public List yg_display() {
		String hql="from Ygjbxxb y where y.luoji='"+1+"'";
		return this.getHibernateTemplate().find(hql);
	}
	
	//���������޸�Ա����Ϣ
	public boolean yg_updateone(Ygjbxxb ygjbxxb) {
		try{
			this.getHibernateTemplate().update(ygjbxxb);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	
	//�����ݵ�id
	public List yg_id(int yid) {
		 String hql="from Ygjbxxb y where y.yid='"+yid+"'";
			return this.getHibernateTemplate().find(hql);
	}

	//�޸�Ա����Ϣ
	public boolean yg_update(Ygjbxxb ygjbxxb) {
		try{
			this.getHibernateTemplate().update(ygjbxxb);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	
	
	//ɾ��Ա����Ϣ���߼�ɾ����
	public boolean yg_delete(Ygjbxxb ygjbxxb) {
		try{
			this.getHibernateTemplate().update(ygjbxxb);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	//����ɾ��Ա����Ϣ������ɾ����
	public boolean yg_deleteall(Ygjbxxb ygjbxxb) {
		try{
			this.getHibernateTemplate().delete(ygjbxxb);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	//ɾ��Ա����Ϣ������ɾ����
	public boolean yg_deletecd(Ygjbxxb ygjbxxb) {
		try{
			this.getHibernateTemplate().delete(ygjbxxb);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	//�鿴��ɾ��Ϣ
	public List  yg_yishan() {
		String hql="from Ygjbxxb y where y.luoji='"+0+"'";
		return this.getHibernateTemplate().find(hql);
	}

	

	//�ָ�Ա����Ϣ
	public boolean yg_huifu(Ygjbxxb ygjbxxb) {
		try{
			this.getHibernateTemplate().update(ygjbxxb);
			return true;
		}catch(Exception e){
			return false;
		}
	}

	
	
	
}
