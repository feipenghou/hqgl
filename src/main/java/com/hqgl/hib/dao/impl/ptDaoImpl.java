package com.hqgl.hib.dao.impl;
import com.hqgl.hib.dao.ptDao;
import com.hqgl.hib.po.Dingdan;
import com.hqgl.hib.po.Kehu;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import java.util.List;

public class ptDaoImpl extends HibernateDaoSupport implements ptDao {
	//根据ID查看一条信息
	public List pt_id(String id){
		String hql="from User u where u.id='"+id+"'";
		return this.getHibernateTemplate().find(hql);
	}
	public List gg() {
		String hql="from Notice n where n.panduan='"+1+"' order by n.qtime desc";
		return this.getHibernateTemplate().find(hql);
	}
	//根据id查看一条公告
	public List ptnotice_id(String id){
		String hql="from Notice n where n.id='"+id+"'";
		return this.getHibernateTemplate().find(hql);
	}
	//查看全部礼服
	public List ptfuzhuang_display(){
		String hql="from Fuzhuang n order by n.id asc";
		return this.getHibernateTemplate().find(hql);
	}
	//根据id查看一条礼服信息
	public List ptfuzhuang_id(String id){
		String hql="from Fuzhuang f where f.id='"+id+"'";
		return this.getHibernateTemplate().find(hql);
	}
	public List ptcar(){
		String hql="from Car n order by n.id asc";
		return this.getHibernateTemplate().find(hql);
	}
	public List ptcar_id(String id){
		String hql="from Car a where a.id='"+id+"'";
		return this.getHibernateTemplate().find(hql);
	}
	//添加订单
	public List ptaddkehuid(){
    	String hql="from Kehu k" ;
    	return this.getHibernateTemplate().find(hql);
    }
    public boolean ptaddkehu(Kehu kehu){
    	try{ 
			this.getHibernateTemplate().save(kehu);			
	     return true;
	  }
	catch(Exception e)
	{
		return false;
	}
    }
    
	   public List pttianjiadingdan(){
		  String hql="from Dingdan d" ;
		  return this.getHibernateTemplate().find(hql);
	   }
	   public boolean pttianjia(Dingdan dingdan){
		   try{
			   this.getHibernateTemplate().save(dingdan);
			   return true ;
		   }catch(Exception e){
			   return false;
		   }
	   }
}