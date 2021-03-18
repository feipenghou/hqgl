package com.hqgl.service;

import com.hqgl.hib.po.Dingdan;
import com.hqgl.hib.po.Kehu;
import com.hqgl.hib.po.Tuidang;

import java.util.List;

public interface IkehuService {
  //添加客户信息
   public List addkehuid();
   public boolean addkehu(Kehu kehu);
 //查看客户信息
   public List kehumanage(String panduan);
 //按条件查看客户信息
   public List kehutiaojian(String KNumber, String KDate);
 //查看客户具体信息
   public List kehujuti(String KNumber);
  //修改客户信息
   public List updatekehuid(String KNumber, String panduan);
   public boolean updatekehu(Kehu kehu);
 //删除客户信息
   public List deletekehuid(String KNumber);
   public boolean deletekehu(Kehu kehu);



 //订单管理功能模块
 //添加订单
   public List tianjiadingdan();
   public boolean tianjia(Dingdan dingdan);
 //查看订单
   public List dingdanmanage(String panduan);
   //查看订单具体信息
   public List dingdanjuti(String DNumber);

 //从订单添加客户
   public boolean adddingdan(Kehu kehu, Dingdan ding);
   //删除订单
   public boolean deletedingdan(Tuidang tuidang, Dingdan dingdan);
 //查看退单
   public List tuidanmanage();
 //查看退单具体信息
   public List tuidanjuti(String TNumber);
}
