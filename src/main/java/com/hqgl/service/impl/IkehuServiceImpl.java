package com.hqgl.service.impl;

import com.hqgl.hib.dao.IkehuDao;
import com.hqgl.hib.po.Dingdan;
import com.hqgl.hib.po.Kehu;
import com.hqgl.hib.po.Tuidang;
import com.hqgl.service.IkehuService;

import java.util.List;

public class IkehuServiceImpl implements IkehuService {
    public IkehuDao ikehudao;

	public IkehuDao getIkehudao() {
		return ikehudao;
	}

	public void setIkehudao(IkehuDao ikehudao) {
		this.ikehudao = ikehudao;
	}
	
/*添加客户信息*/
    public List addkehuid(){
    	return this.getIkehudao().addkehuid();
    }
    public boolean addkehu(Kehu kehu){
    	return this.getIkehudao().addkehu(kehu);
    }
    
    //查看客户信息
    public List kehumanage(String panduan){
    	return this.getIkehudao().kehumanage(panduan);
    }
  //按条件查看客户信息
    public List kehutiaojian(String KNumber,String KDate){
    	return this.getIkehudao().kehutiaojian(KNumber, KDate);
    }
  //查看客户具体信息
    public List kehujuti(String KNumber){
    	return this.getIkehudao().kehujuti(KNumber);
    }
   //修改客户信息
    public List updatekehuid(String KNumber,String panduan){
    	return this.getIkehudao().updatekehuid(KNumber, panduan);
    }
    public boolean updatekehu(Kehu kehu){
    	return this.getIkehudao().updatekehu(kehu);
    }
  //删除客户信息
    public List deletekehuid(String KNumber){
    	return this.getIkehudao().deletekehuid(KNumber);
    }
    public boolean deletekehu(Kehu kehu){
    	return this.getIkehudao().deletekehu(kehu);
    }
    
  //订单管理功能模块
  //添加订单
    public List tianjiadingdan(){
    	return this.getIkehudao().tianjiadingdan();
    }
    public boolean tianjia(Dingdan dingdan){
    	return this.getIkehudao().tianjia(dingdan);
    	
    }
  //查看订单
    public List dingdanmanage(String panduan){
    	return this.getIkehudao().dingdanmanage(panduan);
    }
    //查看订单具体信息
    public List dingdanjuti(String DNumber){
    	return this.getIkehudao().dingdanjuti(DNumber);
    }
  //从订单添加客户
    public boolean adddingdan(Kehu kehu, Dingdan ding){
    	return this.getIkehudao().adddingdan(kehu,ding);
    }
    //删除订单
    public boolean deletedingdan(Tuidang tuidang, Dingdan dingdan){
    	return this.getIkehudao().deletedingdan(tuidang,dingdan);
    }
  //查看退单
    public List tuidanmanage(){
    	return this.getIkehudao().tuidanmanage();
    }
  //查看退单具体信息
    public List tuidanjuti(String TNumber){
    	return this.getIkehudao().tuidanjuti(TNumber);
    }
}

