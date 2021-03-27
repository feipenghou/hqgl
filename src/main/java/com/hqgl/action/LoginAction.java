package com.hqgl.action;

import com.hqgl.hib.po.Fuzhuang;
import com.hqgl.hib.po.Notice;
import com.hqgl.hib.po.User;
import com.hqgl.service.LoginService;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class LoginAction {
    public LoginService loginservice;

    public LoginService getLoginservice() {
        return loginservice;
    }

    public void setLoginservice(LoginService loginservice) {
        this.loginservice = loginservice;
    }

    //user
    private String id;
    private String pass;
    private String panduan;
    private String yanzhengma;

    public String getYanzhengma() {
        return yanzhengma;
    }

    public void setYanzhengma(String yanzhengma) {
        this.yanzhengma = yanzhengma;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getPanduan() {
        return panduan;
    }

    public void setPanduan(String panduan) {
        this.panduan = panduan;
    }

    //notice表
    private String title;
    private String qtime;
    private String jtime;
    private String content;
    private String type;
    private String name;
    private String photo;

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getQtime() {
        return qtime;
    }

    public void setQtime(String qtime) {
        this.qtime = qtime;
    }

    public String getJtime() {
        return jtime;
    }

    public void setJtime(String jtime) {
        this.jtime = jtime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    //登陆系统
    public String login() {
        HttpSession session = ServletActionContext.getRequest().getSession();
        Map request1 = (Map) ActionContext.getContext().get("request");
        if (session.getAttribute("rand") == null) {
            return "error";
        }
        //获得图形校验码
        String sf = (String) session.getAttribute("rand");
        //如果图形校验码正确，判断帐号、密码是否正确
        if (sf.equals(this.getYanzhengma())) {
            List loginlist = this.getLoginservice().login(this.getId(), this.getPass());
            if (loginlist.size() > 0) {
                ActionContext.getContext().getSession().put("loginlist", loginlist);
                User users = (User) loginlist.get(0);
                if ("1".equals(users.getPanduan())) {
                    return "admin";
                } else {
                    return "pt";
                }
            } else {
                String m = "<script language='javascript'>alert('用户名或者密码输入不正确！!');window.location.href='javascript:history.go(-1)';</script>";
                request1.put("m", m);
                return "no";
            }
        } else {
            String m = "<script language='javascript'>alert('验证码输入不正确！!');window.location.href='javascript:history.go(-1)';</script>";
            request1.put("m", m);
            return "error";
        }
    }

    //查看全部管理员
    public String admin_display() {
        List adminlist = this.getLoginservice().admin_display();
        Map session = (Map) ActionContext.getContext().get("session");
        if (adminlist.size() > 0) {
            session.put("adminlist", adminlist);
            return "success";
        } else {
            return "error";
        }
    }

    //查看全部公告
    public String notice_display() {
        List noticelist = this.getLoginservice().notice_display();
        Map session = (Map) ActionContext.getContext().get("session");
        if (noticelist.size() > 0) {
            session.put("noticelist", noticelist);
            return "success";
        } else {
            return "error";
        }
    }

    //根据id查看一条公告
    public String notice_id() {
        List noticelist = this.getLoginservice().notice_id(this.getId());
        Map session = (Map) ActionContext.getContext().get("session");
        if (noticelist.size() > 0) {
            session.put("noticelist", noticelist);
            return "success";
        } else {
            return "error";
        }
    }

    //删除公告
    public String notice_delete() {
        List noticelist = this.getLoginservice().notice_id(aa[i]);
        Notice notice = (Notice) noticelist.get(0);
        notice.setPanduan("0");
        if (this.getLoginservice().notice_delete(notice)) {
            return "success";
        } else {
            return "error";
        }
    }

    //修改公告
    public String notice_update() {
        List noticelist = this.getLoginservice().notice_id(this.getId());
        Notice notice = (Notice) noticelist.get(0);
        notice.setContent(this.getContent());
        notice.setJtime(this.getJtime());
        notice.setQtime(this.getQtime());
        notice.setTitle(this.getTitle());
        notice.setType(this.getType());
        Map session = (Map) ActionContext.getContext().get("session");
        if (this.getLoginservice().notice_update(notice)) {
            return "success";
        } else {
            return "error";
        }
    }

    //批量删除
    private int i;
    private String aa[];

    public int getI() {
        return i;
    }

    public void setI(int i) {
        this.i = i;
    }

    public String[] getAa() {
        return aa;
    }

    public void setAa(String[] aa) {
        this.aa = aa;
    }


    public String notice_d() {
        try {
            for (int i = 0; i < aa.length; i++) {
                this.i = i;
                notice_delete();
            }
            return "success";
        } catch (Exception e) {
            return "error";
        }
    }

    //发布公告
    public String notice_add() {
        Notice notice = new Notice();
        notice.setId(Lsh.getOn("id", "notice"));
        notice.setContent(this.getContent());
        notice.setJtime(this.getJtime());
        notice.setName(this.getName());
        notice.setQtime(this.getQtime());
        notice.setTitle(this.getTitle());
        notice.setType(this.getType());
        notice.setPanduan("1");
        if (this.getLoginservice().notice_add(notice)) {
            return "success";
        } else {
            return "error";
        }
    }

    //上传文件的代码
    private File upload;
    //封装上传文件类型的属性
    private String uploadContentType;
    //封装上传文件名的属性
    private String uploadFileName;
    //接受依赖注入的属性
    private String savePath;
    //定义该Action允许上传的文件类型
    private String allowTypes;

    public String getAllowTypes() {
        return allowTypes;
    }

    public void setAllowTypes(String allowTypes) {
        this.allowTypes = allowTypes;
    }

    public File getUpload() {
        return upload;
    }

    public void setUpload(File upload) {
        this.upload = upload;
    }

    public String getUploadContentType() {
        return uploadContentType;
    }

    public void setUploadContentType(String uploadContentType) {
        this.uploadContentType = uploadContentType;
    }

    public String getUploadFileName() {
        return uploadFileName;
    }

    public void setUploadFileName(String uploadFileName) {
        this.uploadFileName = uploadFileName;
    }

    public String getSavePath() {
        return ServletActionContext.getRequest().getRealPath(savePath);
    }

    public void setSavePath(String savePath) {
        this.savePath = savePath;
    }

    /*
     * 上传
     * */
    public String upload() throws IOException {
        System.out.println("dao");
        //System.out.println(this.getTitle());
        System.out.println(this.getUpload());
        System.out.println(this.getUploadFileName());
        System.out.println(this.getUploadContentType());
        System.out.println(this.getSavePath());
//		以服务器的文件保存地址和原文件名建立上传文件输出流
        FileOutputStream fos = new FileOutputStream(getSavePath() + "\\" + this.getUploadFileName());
//		以上传文件建立一个文件上传流
        FileInputStream fis = new FileInputStream(getUpload());
//		将上传文件的内容写入服务器
        byte[] buffer = new byte[1024];
        int len = 0;
        while ((len = fis.read(buffer)) > 0) {
            fos.write(buffer, 0, len);
        }
        upload = null;
        return fuzhuang_add();
    }


    //fuzhuang表
    private String jianjie;
    private String money;
    private String lipin;
    private String zhaopian;

    public String getZhaopian() {
        return zhaopian;
    }

    public void setZhaopian(String zhaopian) {
        this.zhaopian = zhaopian;
    }

    public String getJianjie() {
        return jianjie;
    }

    public void setJianjie(String jianjie) {
        this.jianjie = jianjie;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }

    public String getLipin() {
        return lipin;
    }

    public void setLipin(String lipin) {
        this.lipin = lipin;
    }

    //添加礼服
    public String fuzhuang_add() {
        Fuzhuang fuzhuang = new Fuzhuang();
        fuzhuang.setId(Lsh.getOn("id", "fuzhuang"));
        fuzhuang.setJianjie(this.getJianjie());
        fuzhuang.setLipin(this.getLipin());
        fuzhuang.setMoney(this.getMoney());
        fuzhuang.setPhoto(this.getPhoto());
        fuzhuang.setPanduan("1");
        fuzhuang.setZhaopian(this.getUploadFileName());
        fuzhuang.setType(this.getType());
        if (this.getLoginservice().fuzhuang_add(fuzhuang)) {
            return "success";
        } else {
            return "error";
        }
    }

    //查看全部礼服
    public String fuzhuang_display() {
        List fuzhuanglist = this.getLoginservice().fuzhuang_display();
        Map session = (Map) ActionContext.getContext().get("session");
        if (fuzhuanglist.size() > 0) {
            session.put("fuzhuanglist", fuzhuanglist);
            return "success";
        } else {
            return "error";
        }
    }

    //删除礼服
    public String fuzhuang_delete() {
        List fuzhuanglist = this.getLoginservice().fuzhuang_id(aa[i]);
        Fuzhuang fuzhuang = (Fuzhuang) fuzhuanglist.get(0);
        fuzhuang.setPanduan("0");

        if (this.getLoginservice().fuzhuang_delete(fuzhuang)) {

            return "success";
        } else {
            return "error";
        }
    }

    //根据id查看一条信息
    public String fuzhuang_id() {
        List fuzhuanglist = this.getLoginservice().fuzhuang_id(this.getId());
        Map session = (Map) ActionContext.getContext().get("session");
        if (fuzhuanglist.size() > 0) {
            session.put("fuzhuanglist", fuzhuanglist);
            return "success";
        } else {
            return "error";
        }
    }

    //修改礼服
    public String fuzhuang_update() {
        List fuzhuanglist = this.getLoginservice().fuzhuang_id(this.getId());
        Fuzhuang fuzhuang = (Fuzhuang) fuzhuanglist.get(0);

        fuzhuang.setJianjie(this.getJianjie());
        fuzhuang.setLipin(this.getLipin());
        fuzhuang.setMoney(this.getMoney());
        fuzhuang.setPhoto(this.getPhoto());
        fuzhuang.setType(this.getType());

        if (this.getLoginservice().fuzhuang_update(fuzhuang)) {

            return "success";
        } else {
            return "error";
        }
    }

    //批量删除
    public String fuzhuang_d() {
        Map request = (Map) ActionContext.getContext().get("request");
        try {
            for (int i = 0; i < aa.length; i++) {
                this.i = i;
                fuzhuang_delete();
            }
            return "success";
        } catch (Exception e) {
            return "error";
        }
    }
}