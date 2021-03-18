package com.hqgl.service.impl;

import com.hqgl.hib.dao.IygDao;
import com.hqgl.hib.po.Ygjbxxb;
import com.hqgl.service.IygService;

import java.util.List;

public class IygServiceImpl implements IygService {
	
	//ס��dao�� 

	private IygDao iygdao;
	public IygDao getIygdao() {
		return iygdao;
	}

	public void setIygdao(IygDao iygdao) {
		this.iygdao = iygdao;
	}
	
	
	//���Ա����Ϣ
	public boolean yg_add(Ygjbxxb ygjbxxb) {
		return this.getIygdao().yg_add(ygjbxxb);
	}

	//�������Ա����Ϣ
	public boolean yg_addall(Ygjbxxb ygjbxxb) {
		return this.getIygdao().yg_addall(ygjbxxb);
	}
	
	//��ѯԱ����Ϣ
	public List yg_display() {
		return this.getIygdao().yg_display();
	}


	//�����ݵ�id
	public List yg_id(int yid) {
		return this.getIygdao().yg_id(yid);
	}

	
	//�޸�Ա����Ϣ
	public boolean yg_update(Ygjbxxb ygjbxxb) {
		return this.getIygdao().yg_update(ygjbxxb);
	}

	
	//����������ѯԱ����Ϣ
	public List yg_cha(int yid, String yname) {
		return this.getIygdao().yg_cha(yid, yname);
	}

	//���������޸�
	public boolean yg_updateone(Ygjbxxb ygjbxxb) {
		return this.getIygdao().yg_updateone(ygjbxxb);
	}
	
	
	//ɾ��Ա����Ϣ
	public boolean yg_delete(Ygjbxxb ygjbxxb) {
		return this.getIygdao().yg_delete(ygjbxxb);
	}
	
	

	//����ɾ��Ա����Ϣ��������ɾ����
	public boolean yg_deleteall(Ygjbxxb ygjbxxb) {
		return this.getIygdao().yg_deleteall(ygjbxxb);
	}

	//ɾ��Ա����Ϣ��������ɾ����
	public boolean yg_deletecd(Ygjbxxb ygjbxxb) {
		return this.getIygdao().yg_deletecd(ygjbxxb);
	}
	
	

	//��ѯ��ɾԱ����Ϣ
	public List yg_yishan() {
		return this.getIygdao().yg_yishan();
	}

	

	
	//�ָ�Ա����Ϣ
	public boolean yg_huifu(Ygjbxxb ygjbxxb) {
		return this.getIygdao().yg_huifu(ygjbxxb);
	}

	
	


}
