package com.hqgl.hib.dao;

import com.hqgl.hib.po.User;

import java.util.List;

public interface AdminDao {
	//添加管理员
	public boolean admin_add(User user);
	//根据ID查看一条信息
	public List admin_id(String id);
	//修改管理员
	public boolean admin_update(User user);
	//删除管理员
	public boolean admin_delete(User user);
	//修改密码
	public boolean xgmm(User user);
}
