package com.hqgl.service;

import java.util.List;

import com.hqgl.hib.po.Fuzhuang;
import com.hqgl.hib.po.Notice;
import com.hqgl.hib.po.User;

public interface LoginService {
	//��½ϵͳ
	public List login(String id, String pass);
	//�鿴ȫ������Ա
	public List admin_display();
	//�鿴ȫ������
	public List notice_display();
	//����id�鿴һ������
	public List notice_id(String id);
	//ɾ������
	public boolean notice_delete(Notice notice);
	//�޸Ĺ���
	public boolean notice_update(Notice notice);
	//��������
	public boolean notice_add(Notice notice);
	//������
	public boolean fuzhuang_add(Fuzhuang fuzhuang);
	//�鿴ȫ�����
	public List fuzhuang_display();
	//ɾ�����
	public boolean fuzhuang_delete(Fuzhuang fuzhuang);
	//����id�鿴һ����Ϣ
	public List fuzhuang_id(String id);
	//�޸����
	public boolean fuzhuang_update(Fuzhuang fuzhuang);
}
