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
	//添加留言
	public boolean mess_add(Livemessage livemessage){
		return this.getMessagedao().mess_add(livemessage);
	}
	//查看
	public List mess(){
		return this.getMessagedao().mess();
	}
	//修改
	public List mess_id(String id){
		return this.getMessagedao().mess_id(id);
	}
	public boolean mess_update(Livemessage livemessage){
		return this.getMessagedao().mess_update(livemessage);
	}
	//删除
	public boolean mess_delete(Livemessage livemessage){
		return this.getMessagedao().mess_delete(livemessage);
	}
}
