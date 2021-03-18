package com.hqgl.service.impl;

import com.hqgl.hib.dao.MessageDao;
import com.hqgl.hib.po.Livemessage;
import com.hqgl.service.MessageService;

import java.util.List;

public class MessageServiceImpl implements MessageService {
	public MessageDao messagedao;

	public MessageDao getMessagedao() {
		return messagedao;
	}

	public void setMessagedao(MessageDao messagedao) {
		this.messagedao = messagedao;
	}
	//�������
	public boolean mess_add(Livemessage livemessage){
		return this.getMessagedao().mess_add(livemessage);
	}
	//�鿴
	public List mess(){
		return this.getMessagedao().mess();
	}
	//�޸�
	public List mess_id(String id){
		return this.getMessagedao().mess_id(id);
	}
	public boolean mess_update(Livemessage livemessage){
		return this.getMessagedao().mess_update(livemessage);
	}
	//ɾ��
	public boolean mess_delete(Livemessage livemessage){
		return this.getMessagedao().mess_delete(livemessage);
	}
}
