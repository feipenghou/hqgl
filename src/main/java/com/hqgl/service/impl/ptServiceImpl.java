package com.hqgl.service.impl;
import com.hqgl.hib.dao.ptDao;
import com.hqgl.hib.po.Dingdan;
import com.hqgl.hib.po.Kehu;
import com.hqgl.service.ptService;

import java.util.List;

public class ptServiceImpl implements ptService {
	private ptDao ptdao;
	public ptDao getPtdao() {
	return ptdao;
}
	public void setPtdao(ptDao ptdao) {
		this.ptdao = ptdao;
	}
	//����ID�鿴һ����Ϣ
	public List pt_id(String id){
	return this.getPtdao().pt_id(id);
}
	public List gg() {
		return this.getPtdao().gg();
	}
	//����id�鿴һ������
	public List ptnotice_id(String id){
		return this.getPtdao().ptnotice_id(id);
	}
	//�鿴ȫ�����
	public List ptfuzhuang_display(){
		return this.getPtdao().ptfuzhuang_display();
	}
	//����id�鿴һ�������Ϣ
	public List ptfuzhuang_id(String id){
		return this.getPtdao().ptfuzhuang_id(id);
	}
	//��������
	public List ptcar(){
		return this.getPtdao().ptcar();
	}
	public List ptcar_id(String id){
		return this.getPtdao().ptcar_id(id);
	}
	/*��ӿͻ���Ϣ*/
    public List ptaddkehuid(){
    	return this.getPtdao().ptaddkehuid();
    }
    public boolean ptaddkehu(Kehu kehu){
    	return this.getPtdao().ptaddkehu(kehu);
    }
	//��Ӷ���
    public List pttianjiadingdan(){
    	return this.getPtdao().pttianjiadingdan();
    }
    public boolean pttianjia(Dingdan dingdan){
    	return this.getPtdao().pttianjia(dingdan);
    	
    }
}
