package com.hqgl.hib.dao.impl;

import com.hqgl.hib.dao.LoginDao;
import com.hqgl.hib.po.Fuzhuang;
import com.hqgl.hib.po.Notice;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

public class LoginDaoImpl extends HibernateDaoSupport implements LoginDao {
	//��½ϵͳ
	public List login(String id, String pass) {
		String hql="from User u where u.id='"+id+"' and u.pass='"+pass+"'";
		return this.getHibernateTemplate().find(hql);
	}
	//�鿴ȫ������Ա
	public List admin_display(){
		String hql="from User u where u.panduan='"+1+"'";
		return this.getHibernateTemplate().find(hql);
	}
	//�鿴ȫ������
	public List notice_display() {
		String hql="from Notice n where n.panduan='"+1+"' order by n.qtime desc";
		return this.getHibernateTemplate().find(hql);
	}
	//����id�鿴һ������
	public List notice_id(String id){
		String hql="from Notice n where n.id='"+id+"'";
		return this.getHibernateTemplate().find(hql);
	}
	//ɾ������
	public boolean notice_delete(Notice notice){
		try{this.getHibernateTemplate().update(notice);
			return true;
		}catch(Exception e){
			return false;
		}
	}
	//�޸Ĺ���
	public boolean notice_update(Notice notice){
		try{
			this.getHibernateTemplate().update(notice);
			return true;
		}catch(Exception e){
			return false;
		}
	}
	//��������
	public boolean notice_add(Notice notice){
		try{this.getHibernateTemplate().save(notice);
		return true;
		}catch(Exception e){
			return false;
		}
	}
	//������
	public boolean fuzhuang_add(Fuzhuang fuzhuang){
		try{this.getHibernateTemplate().save(fuzhuang);
		return true;
		}catch(Exception e){
			return false;
		}
	}
	//�鿴ȫ�����
	public List fuzhuang_display(){
		String hql="from Fuzhuang n order by n.id asc";
		return this.getHibernateTemplate().find(hql);
	}
	//ɾ�����
	public boolean fuzhuang_delete(Fuzhuang fuzhuang){
		try{this.getHibernateTemplate().update(fuzhuang);
		return true;
		}catch(Exception e){
			return false;
		}
	}
	//����id�鿴һ����Ϣ
	public List fuzhuang_id(String id){
		String hql="from Fuzhuang f where f.id='"+id+"' and f.panduan='"+1+"'";
		return this.getHibernateTemplate().find(hql);
	}
	//�޸����
	public boolean fuzhuang_update(Fuzhuang fuzhuang){
		try{this.getHibernateTemplate().update(fuzhuang);
		return true;
		}catch(Exception e){
			return false;
		}
	}

	
	
	
	
	
}
