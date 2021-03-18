package com.hqgl.hib.dao.impl;

import java.util.List;
import com.hqgl.hib.po.Kehu;
import com.hqgl.hib.po.Dingdan;
import com.hqgl.hib.po.Tuidang;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.hqgl.hib.dao.IkehuDao;

public class IkehuDaoImpl extends HibernateDaoSupport implements IkehuDao {
    public List addkehuid(){
    	String hql="from Kehu k" ;
    	return this.getHibernateTemplate().find(hql);
    }
    public boolean addkehu(Kehu kehu){
    	try{ 
			this.getHibernateTemplate().save(kehu);			
	     return true;
	  }
	catch(Exception e)
	{
		return false;
	}
    }
	//查看客户信息
	public List kehumanage(String panduan){
		String hql="from Kehu k where k.panduan='"+1+"' order by KNumber desc";
		return this.getHibernateTemplate().find(hql);
	}
//按条件查看客户信息
	public List kehutiaojian(String KNumber,String KDate){
		String hql="from Kehu k where k.KNumber='"+KNumber+"'  or k.KDate='"+KDate+"'";
		System.out.println("123");
		return  this.getHibernateTemplate().find(hql);
	}
	//查看客户具体信息
	   public List kehujuti(String KNumber){
		   String hql="from Kehu k where k.KNumber='"+KNumber+"'";
		   return this.getHibernateTemplate().find(hql);
	   }
	 //修改客户信息
	   public List updatekehuid(String KNumber,String panduan){
		 String hql="from Kehu k where k.KNumber='"+KNumber+"' and  k.panduan='"+1+"'";
		 return this.getHibernateTemplate().find(hql);
	   }
	   public boolean updatekehu(Kehu kehu){
		   try 
			{
				 this.getHibernateTemplate().update(kehu);
				return true;
					}
			catch(Exception e){
				return false;
			}
	   }
	 //删除客户信息
	   public List deletekehuid(String KNumber){
		   String hql="from Kehu k where k.KNumber='"+KNumber+"'";
		   return this.getHibernateTemplate().find(hql);
	   }
	   public boolean deletekehu(Kehu kehu){
		   try{
				 this.getHibernateTemplate().update(kehu);
				 return true;
			 }catch(Exception e){
				 return false;
			 }
	   }
	   
	 //订单管理功能模块
	   //添加订单
	   public List tianjiadingdan(){
		  String hql="from Dingdan d" ;
		  return this.getHibernateTemplate().find(hql);
	   }
	   public boolean tianjia(Dingdan dingdan){
		   try{
			   this.getHibernateTemplate().save(dingdan);
			   return true ;
		   }catch(Exception e){
			   return false;
		   }
	   }
	   //查看订单
	   public List dingdanmanage(String panduan){
		   String hql="from Dingdan d where d.panduan='"+1+"' ";
		   return this.getHibernateTemplate().find(hql);
	   }
	   //查看订单具体信息
	      public List dingdanjuti(String DNumber){
	    	  String hql="from Dingdan d where d.DNumber='"+DNumber+"'";
			   return this.getHibernateTemplate().find(hql);
	      }
	 //从订单添加客户
	      public boolean adddingdan(Kehu kehu, Dingdan ding){
	    	   	try{ 
	    			this.getHibernateTemplate().save(kehu);	
	    			this.getHibernateTemplate().update(ding);
	    	     return true;
	    	  }
	    	catch(Exception e)
	    	{
	    		return false;
	    	}
	      }
	      //删除订单
	      public boolean deletedingdan(Tuidang tuidang, Dingdan dingdan){
			   try{
					 this.getHibernateTemplate().save(tuidang);
					 this.getHibernateTemplate().update(dingdan);
					 return true;
				 }catch(Exception e){
					 return false;
				 }
		   }
	    //查看退单
		   public List tuidanmanage(){
			   String hql="from Tuidang t";
			   return this.getHibernateTemplate().find(hql);
		   }
		 //查看退单具体信息
		      public List tuidanjuti(String TNumber){
		    	  String hql="from Tuidang t where t.TNumber='"+TNumber+"'";
				   return this.getHibernateTemplate().find(hql);
		      }
}
