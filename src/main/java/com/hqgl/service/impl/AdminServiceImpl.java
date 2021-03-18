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
    //添加管理员
    public boolean admin_add(User user){
        return this.getAdmindao().admin_add(user);
    }
    //根据ID查看一条信息
    public List admin_id(String id){
        return this.getAdmindao().admin_id(id);
    }
    //修改管理员
    public boolean admin_update(User user){
        return this.getAdmindao().admin_update(user);
    }
    //删除管理员
    public boolean admin_delete(User user){
        return this.getAdmindao().admin_delete(user);
    }
    //修改密码
    public boolean xgmm(User user){
        return this.getAdmindao().xgmm(user);
    }
	
}
