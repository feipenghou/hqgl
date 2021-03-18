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
	//��½ϵͳ

	public List login(String id, String pass) {
		return this.getLogindao().login(id, pass);
		}
	//�鿴ȫ������Ա
	public List admin_display(){
		return this.getLogindao().admin_display();
	}
	//�鿴ȫ������
	public List notice_display(){
		return this.getLogindao().notice_display();
	}
	//����id�鿴һ������
	public List notice_id(String id){
		return this.getLogindao().notice_id(id);
	}
	//ɾ������
	public boolean notice_delete(Notice notice){
		return this.getLogindao().notice_delete(notice);
	}
	//�޸Ĺ���
	public boolean notice_update(Notice notice){
		return this.getLogindao().notice_update(notice);
	}
	//��������
	public boolean notice_add(Notice notice){
		return this.getLogindao().notice_add(notice);
	}
	//������
	public boolean fuzhuang_add(Fuzhuang fuzhuang){
		return this.getLogindao().fuzhuang_add(fuzhuang);
	}
	//�鿴ȫ�����
	public List fuzhuang_display(){
		return this.getLogindao().fuzhuang_display();
	}
	//ɾ�����
	public boolean fuzhuang_delete(Fuzhuang fuzhuang){
	return this.getLogindao().fuzhuang_delete(fuzhuang);
	}
	//����id�鿴һ����Ϣ
	public List fuzhuang_id(String id){
		return this.getLogindao().fuzhuang_id(id);
	}
	//�޸����
	public boolean fuzhuang_update(Fuzhuang fuzhuang){
		return this.getLogindao().fuzhuang_update(fuzhuang);
	}

}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

