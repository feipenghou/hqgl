package com.hqgl.service.impl;

import com.hqgl.hib.dao.LoginDao;
import com.hqgl.hib.po.Fuzhuang;
import com.hqgl.hib.po.Notice;
import com.hqgl.service.LoginService;

import java.util.List;

public class LoginServiceImpl implements LoginService {
	public LoginDao logindao;

	public LoginDao getLogindao() {
		return logindao;
	}

	public void setLogindao(LoginDao logindao) {
		this.logindao = logindao;
	}
	//登陆系统

	public List login(String id, String pass) {
		return this.getLogindao().login(id, pass);
		}
	//查看全部管理员
	public List admin_display(){
		return this.getLogindao().admin_display();
	}
	//查看全部公告
	public List notice_display(){
		return this.getLogindao().notice_display();
	}
	//根据id查看一条公告
	public List notice_id(String id){
		return this.getLogindao().notice_id(id);
	}
	//删除公告
	public boolean notice_delete(Notice notice){
		return this.getLogindao().notice_delete(notice);
	}
	//修改公告
	public boolean notice_update(Notice notice){
		return this.getLogindao().notice_update(notice);
	}
	//发布公告
	public boolean notice_add(Notice notice){
		return this.getLogindao().notice_add(notice);
	}
	//添加礼服
	public boolean fuzhuang_add(Fuzhuang fuzhuang){
		return this.getLogindao().fuzhuang_add(fuzhuang);
	}
	//查看全部礼服
	public List fuzhuang_display(){
		return this.getLogindao().fuzhuang_display();
	}
	//删除礼服
	public boolean fuzhuang_delete(Fuzhuang fuzhuang){
	return this.getLogindao().fuzhuang_delete(fuzhuang);
	}
	//根据id查看一条信息
	public List fuzhuang_id(String id){
		return this.getLogindao().fuzhuang_id(id);
	}
	//修改礼服
	public boolean fuzhuang_update(Fuzhuang fuzhuang){
		return this.getLogindao().fuzhuang_update(fuzhuang);
	}

}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

