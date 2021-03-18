package com.hqgl.service.impl;

import com.hqgl.hib.dao.AdminDao;
import com.hqgl.hib.po.User;
import com.hqgl.service.AdminService;

import java.util.List;

public class AdminServiceImpl implements AdminService {
    private AdminDao admindao;

    public AdminDao getAdmindao() {
        return admindao;
    }

    public void setAdmindao(AdminDao admindao) {
        this.admindao = admindao;
    }
    //��ӹ���Ա
    public boolean admin_add(User user){
        return this.getAdmindao().admin_add(user);
    }
    //����ID�鿴һ����Ϣ
    public List admin_id(String id){
        return this.getAdmindao().admin_id(id);
    }
    //�޸Ĺ���Ա
    public boolean admin_update(User user){
        return this.getAdmindao().admin_update(user);
    }
    //ɾ������Ա
    public boolean admin_delete(User user){
        return this.getAdmindao().admin_delete(user);
    }
    //�޸�����
    public boolean xgmm(User user){
        return this.getAdmindao().xgmm(user);
    }
	
}
