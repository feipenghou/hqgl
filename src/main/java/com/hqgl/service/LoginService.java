package com.hqgl.service;

import java.util.List;

import com.hqgl.hib.po.Fuzhuang;
import com.hqgl.hib.po.Notice;
import com.hqgl.hib.po.User;

public interface LoginService {
	//登陆系统
	public List login(String id, String pass);
	//查看全部管理员
	public List admin_display();
	//查看全部公告
	public List notice_display();
	//根据id查看一条公告
	public List notice_id(String id);
	//删除公告
	public boolean notice_delete(Notice notice);
	//修改公告
	public boolean notice_update(Notice notice);
	//发布公告
	public boolean notice_add(Notice notice);
	//添加礼服
	public boolean fuzhuang_add(Fuzhuang fuzhuang);
	//查看全部礼服
	public List fuzhuang_display();
	//删除礼服
	public boolean fuzhuang_delete(Fuzhuang fuzhuang);
	//根据id查看一条信息
	public List fuzhuang_id(String id);
	//修改礼服
	public boolean fuzhuang_update(Fuzhuang fuzhuang);
}
