package com.hqgl.service;

import com.hqgl.hib.po.Dingdan;
import com.hqgl.hib.po.Kehu;
import com.hqgl.hib.po.Tuidang;

import java.util.List;

public interface IkehuService {
  //��ӿͻ���Ϣ
   public List addkehuid();
   public boolean addkehu(Kehu kehu);
 //�鿴�ͻ���Ϣ
   public List kehumanage(String panduan);
 //�������鿴�ͻ���Ϣ
   public List kehutiaojian(String KNumber, String KDate);
 //�鿴�ͻ�������Ϣ
   public List kehujuti(String KNumber);
  //�޸Ŀͻ���Ϣ
   public List updatekehuid(String KNumber, String panduan);
   public boolean updatekehu(Kehu kehu);
 //ɾ���ͻ���Ϣ
   public List deletekehuid(String KNumber);
   public boolean deletekehu(Kehu kehu);



 //����������ģ��
 //��Ӷ���
   public List tianjiadingdan();
   public boolean tianjia(Dingdan dingdan);
 //�鿴����
   public List dingdanmanage(String panduan);
   //�鿴����������Ϣ
   public List dingdanjuti(String DNumber);

 //�Ӷ�����ӿͻ�
   public boolean adddingdan(Kehu kehu, Dingdan ding);
   //ɾ������
   public boolean deletedingdan(Tuidang tuidang, Dingdan dingdan);
 //�鿴�˵�
   public List tuidanmanage();
 //�鿴�˵�������Ϣ
   public List tuidanjuti(String TNumber);
}
