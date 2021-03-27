package com.hqgl.hib.dao.impl;

import com.hqgl.hib.dao.AdminDao;
import com.hqgl.hib.po.User;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

public class AdminDaoImpl extends HibernateDaoSupport implements AdminDao {
	//��ӹ���Ա
	public boolean admin_add(User user){
		try{this.getHibernateTemplate().save(user);
				return true;
		}catch(Exception e){
			return false;
		}
	}
	//����ID�鿴һ����Ϣ
	public List admin_id(String id){
		String hql="from User u where u.id='"+id+"'";
		return this.getHibernateTemplate().find(hql);
	}
	//�޸Ĺ���Ա
	public boolean admin_update(User user){
		try{this.getHibernateTemplate().update(user);
				return true;
		}catch(Exception e){
			return false;
		}
	}
	//ɾ������Ա
	public boolean admin_delete(User user){
		try{this.getHibernateTemplate().delete(user);
				return true;
		}catch(Exception e){
			return false;
		}
	}
	//�޸�����
	public boolean xgmm(User user){
		try{this.getHibernateTemplate().update(user);
			return true;
		}catch(Exception e){
			return false;
}
	}
}
