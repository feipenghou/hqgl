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
	
/*��ӿͻ���Ϣ*/
    public List addkehuid(){
    	return this.getIkehudao().addkehuid();
    }
    public boolean addkehu(Kehu kehu){
    	return this.getIkehudao().addkehu(kehu);
    }
    
    //�鿴�ͻ���Ϣ
    public List kehumanage(String panduan){
    	return this.getIkehudao().kehumanage(panduan);
    }
  //�������鿴�ͻ���Ϣ
    public List kehutiaojian(String KNumber,String KDate){
    	return this.getIkehudao().kehutiaojian(KNumber, KDate);
    }
  //�鿴�ͻ�������Ϣ
    public List kehujuti(String KNumber){
    	return this.getIkehudao().kehujuti(KNumber);
    }
   //�޸Ŀͻ���Ϣ
    public List updatekehuid(String KNumber,String panduan){
    	return this.getIkehudao().updatekehuid(KNumber, panduan);
    }
    public boolean updatekehu(Kehu kehu){
    	return this.getIkehudao().updatekehu(kehu);
    }
  //ɾ���ͻ���Ϣ
    public List deletekehuid(String KNumber){
    	return this.getIkehudao().deletekehuid(KNumber);
    }
    public boolean deletekehu(Kehu kehu){
    	return this.getIkehudao().deletekehu(kehu);
    }
    
  //����������ģ��
  //��Ӷ���
    public List tianjiadingdan(){
    	return this.getIkehudao().tianjiadingdan();
    }
    public boolean tianjia(Dingdan dingdan){
    	return this.getIkehudao().tianjia(dingdan);
    	
    }
  //�鿴����
    public List dingdanmanage(String panduan){
    	return this.getIkehudao().dingdanmanage(panduan);
    }
    //�鿴����������Ϣ
    public List dingdanjuti(String DNumber){
    	return this.getIkehudao().dingdanjuti(DNumber);
    }
  //�Ӷ�����ӿͻ�
    public boolean adddingdan(Kehu kehu, Dingdan ding){
    	return this.getIkehudao().adddingdan(kehu,ding);
    }
    //ɾ������
    public boolean deletedingdan(Tuidang tuidang, Dingdan dingdan){
    	return this.getIkehudao().deletedingdan(tuidang,dingdan);
    }
  //�鿴�˵�
    public List tuidanmanage(){
    	return this.getIkehudao().tuidanmanage();
    }
  //�鿴�˵�������Ϣ
    public List tuidanjuti(String TNumber){
    	return this.getIkehudao().tuidanjuti(TNumber);
    }
}

