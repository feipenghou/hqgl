package com.hqgl.service;

import com.hqgl.hib.po.Ygjbxxb;

import java.util.List;

public interface IygService {

	//���Ա����Ϣ
	public boolean  yg_add(Ygjbxxb ygjbxxb);
	
	//�������Ա����Ϣ
	public boolean  yg_addall(Ygjbxxb ygjbxxb);
	
	
	//�����ݵ�id
	public List yg_id(int yid);

	//��ѯԱ����Ϣ��
	public List yg_display();
	
	//���������鿴Ա����Ϣ�� 
	public List yg_cha(int yid, String yname);
	
	//����������ѯ���޸�
	public boolean yg_updateone(Ygjbxxb ygjbxxb);
	
	//����id�޸�Ա����Ϣ�� 
	public boolean yg_update(Ygjbxxb ygjbxxb);
	
	//ɾ��Ա����Ϣ���߼�ɾ����
	public boolean yg_delete(Ygjbxxb ygjbxxb);
	
	//����ɾ��Ա����Ϣ
	public boolean yg_deletecd(Ygjbxxb ygjbxxb);
	
	
	//����ɾ��Ա����Ϣ������ɾ����
	public boolean yg_deleteall(Ygjbxxb ygjbxxb);
	
	
	//�鿴��ɾԱ����Ϣ
	public List  yg_yishan();
	
	//�ָ���ɾԱ����Ϣ
	public boolean yg_huifu(Ygjbxxb ygjbxxb);
	
}
