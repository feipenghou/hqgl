package com.hqgl.service;

import com.hqgl.hib.po.Livemessage;

import java.util.List;

public interface MessageService {
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
