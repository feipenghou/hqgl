package com.hqgl.service;

import com.hqgl.hib.po.User;

import java.util.List;

public interface AdminService {
	//��ӹ���Ա
	public boolean admin_add(User user);
	//����ID�鿴һ����Ϣ
	public List admin_id(String id);
	//�޸Ĺ���Ա
	public boolean admin_update(User user);
	//ɾ������Ա
	public boolean admin_delete(User user);
	//�޸�����
	public boolean xgmm(User user);
}
