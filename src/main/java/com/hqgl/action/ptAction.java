package com.hqgl.action;

import com.hqgl.hib.po.Dingdan;
import com.hqgl.hib.po.Kehu;
import com.hqgl.service.ptService;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class ptAction {
    private ptService ptservice;

    private String id;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public ptService getPtservice() {
        return ptservice;
    }

    public void setPtservice(ptService ptservice) {
        this.ptservice = ptservice;
    }

    //根据ID查看一条信息
    public String pt_id() {
        List ptlist = this.getPtservice().pt_id(this.getId());
        Map session = (Map) ActionContext.getContext().get("session");
        if (ptlist.size() > 0) {
            session.put("ptlist", ptlist);
            return "success";
        } else {
            return "error";
        }
    }

    //查看全部公告
    public String gg() {
        List noticelist = this.getPtservice().gg();
        Map session = (Map) ActionContext.getContext().get("session");
        if (noticelist.size() > 0) {
            session.put("noticelist", noticelist);
            return "success";
        } else {
            return "error";
        }
    }

    //根据id查看一条公告
    public String ptnotice_id() {
        List noticelist = this.getPtservice().ptnotice_id(this.getId());
        Map session = (Map) ActionContext.getContext().get("session");
        if (noticelist.size() > 0) {
            session.put("noticelist", noticelist);
            return "success";
        } else {
            return "error";
        }
    }

    //fuzhuang表
    private String jianjie;
    private String money;
    private String mone;
    private String lipin;
    private String zhaopian;

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

    public String getMone() {
        return mone;
    }

    public void setMone(String mone) {
        this.mone = mone;
    }

    public String getLipin() {
        return lipin;
    }

    public void setLipin(String lipin) {
        this.lipin = lipin;
    }

    public String getZhaopian() {
        return zhaopian;
    }

    public void setZhaopian(String zhaopian) {
        this.zhaopian = zhaopian;
    }

    //查看全部礼服
    public String ptfuzhuang_display() {
        List fuzhuanglist = this.getPtservice().ptfuzhuang_display();
        Map session = (Map) ActionContext.getContext().get("session");
        if (fuzhuanglist.size() > 0) {
            session.put("fuzhuanglist", fuzhuanglist);
            return "success";
        } else {
            return "error";
        }
    }

    //根据id查看一条礼服信息
    public String ptfuzhuang_id() {
        List fuzhuanglist = this.getPtservice().ptfuzhuang_id(this.getId());
        Map session = (Map) ActionContext.getContext().get("session");
        if (fuzhuanglist.size() > 0) {
            session.put("fuzhuanglist", fuzhuanglist);
            return "success";
        } else {
            return "error";
        }
    }

    public String ptcar() {
        List list = (List) this.getPtservice().ptcar();
        Map session = (Map) ActionContext.getContext().get("session");
        if (list.size() > 0) {
            session.put("car", list);
            return "success";
        } else {
            return "error";
        }
    }

    public String ptcar_id() {
        List list = this.getPtservice().ptcar_id(this.getId());
        Map request = (Map) ActionContext.getContext().get("request");
        if (list.size() > 0) {
            request.put("carid", list);
            return "success";
        } else {
            return "error";
        }
    }

    private String KNumber;
    private String KName;
    private String KSex;
    private String KPhone;
    private String KAddress;
    private String address;
    private String KTx;
    private String KCareid;
    private String KEmail;
    private String KDate;
    private String panduan;

    public String getKNumber() {
        return KNumber;
    }

    public void setKNumber(String number) {
        KNumber = number;
    }

    public String getKName() {
        return KName;
    }

    public void setKName(String name) {
        KName = name;
    }

    public String getKSex() {
        return KSex;
    }

    public void setKSex(String sex) {
        KSex = sex;
    }

    public String getKPhone() {
        return KPhone;
    }

    public void setKPhone(String phone) {
        KPhone = phone;
    }

    public String getKAddress() {
        return KAddress;
    }

    public void setKAddress(String address) {
        KAddress = address;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getKTx() {
        return KTx;
    }

    public void setKTx(String tx) {
        KTx = tx;
    }

    public String getKCareid() {
        return KCareid;
    }

    public void setKCareid(String careid) {
        KCareid = careid;
    }

    public String getKEmail() {
        return KEmail;
    }

    public void setKEmail(String email) {
        KEmail = email;
    }

    public String getKDate() {
        return KDate;
    }

    public void setKDate(String date) {
        KDate = date;
    }

    public String getPanduan() {
        return panduan;
    }

    public void setPanduan(String panduan) {
        this.panduan = panduan;
    }

    //订单表
    private String DNumber;
    private String DName;
    private String DSex;
    private String DRiqi;
    private String DCareid;
    private String DAddress;
    private String DEmail;
    private String DPhone;
    private String pandaun;

    public String getDNumber() {
        return DNumber;
    }

    public void setDNumber(String number) {
        DNumber = number;
    }

    public String getDName() {
        return DName;
    }

    public void setDName(String name) {
        DName = name;
    }

    public String getDSex() {
        return DSex;
    }

    public void setDSex(String sex) {
        DSex = sex;
    }

    public String getDRiqi() {
        return DRiqi;
    }

    public void setDRiqi(String riqi) {
        DRiqi = riqi;
    }

    public String getDCareid() {
        return DCareid;
    }

    public void setDCareid(String careid) {
        DCareid = careid;
    }

    public String getDAddress() {
        return DAddress;
    }

    public void setDAddress(String address) {
        DAddress = address;
    }

    public String getDEmail() {
        return DEmail;
    }

    public void setDEmail(String email) {
        DEmail = email;
    }

    public String getDPhone() {
        return DPhone;
    }

    public void setDPhone(String phone) {
        DPhone = phone;
    }

    public String getPandaun() {
        return pandaun;
    }

    public void setPandaun(String pandaun) {
        this.pandaun = pandaun;
    }

    public String ptaddkehuid() {
        List addkehuidlist = this.getPtservice().ptaddkehuid();
        Map session = (Map) ActionContext.getContext().get("session");
        String kehu = Lsh.getOn("k_number", "kehu");
        if (addkehuidlist.size() > 0) {
            session.put("list", addkehuidlist);
            session.put("kehu", kehu);
            return "ok";
        }
        return "no";
    }

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
        return ptaddkehu();
    }

    public String ptaddkehu() {
        Kehu kehu = new Kehu();
        kehu.setKNumber(this.getKNumber());
        kehu.setKName(this.getKName());
        kehu.setKSex(this.getKSex());
        kehu.setKCareid(this.getKCareid());
        kehu.setKAddress(this.getKAddress() + this.getAddress());
        kehu.setKEmail(this.getKEmail());
        kehu.setKPhone(this.getKPhone());
        kehu.setKTx(this.getUploadFileName());
        kehu.setKDate(this.getKDate());
        kehu.setPanduan("1");
        if (this.getPtservice().ptaddkehu(kehu)) {
            return "success";
        } else {
            return "error";
        }
    }

    //添加订单
    public String pttianjiadingdan() {
        List tianjiadingdanlist = this.getPtservice().ptaddkehuid();
        Map session = (Map) ActionContext.getContext().get("session");
        if (tianjiadingdanlist.size() > 0) {
            session.put("tianjiadingdanlist", tianjiadingdanlist);
            return "ok";
        }
        return "no";
    }

    public String pttianjia() {
        Dingdan dingdan = new Dingdan();
        dingdan.setDNumber(Lsh.getOn("d_number", "dingdan"));
        dingdan.setDName(this.getDName());
        dingdan.setDSex(this.getDSex());
        dingdan.setDCareid(this.getDCareid());
        dingdan.setDAddress(this.getDAddress() + this.getAddress());
        dingdan.setDEmail(this.getDEmail());
        dingdan.setDPhone(this.getDPhone());
        dingdan.setDRiqi(this.getDRiqi());
        dingdan.setPanduan("1");
        if (this.getPtservice().pttianjia(dingdan)) {
            return "success";
        } else {
            return "error";
        }
    }
}
