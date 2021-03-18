package com.hqgl.service;

import com.hqgl.hib.po.Livemessage;

import java.util.List;

public interface MessageService {
	//添加留言
	public boolean mess_add(Livemessage livemessage);
	//查看
	public List mess();
	//修改
	public List mess_id(String id);
	public boolean mess_update(Livemessage livemessage);
	//删除
	public boolean mess_delete(Livemessage livemessage);
}
