package com.hqgl.hib.dao;

import com.hqgl.hib.po.Livemessage;

import java.util.List;

public interface MessageDao {
	//�������
	public boolean mess_add(Livemessage livemessage);
	//�鿴
	public List mess();
	//�޸�
	public List mess_id(String id);
	public boolean mess_update(Livemessage livemessage);
	//ɾ��
	public boolean mess_delete(Livemessage livemessage);
}
