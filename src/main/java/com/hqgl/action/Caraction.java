package com.hqgl.action;

import com.hqgl.hib.po.Car;
import com.hqgl.service.CarService;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

public class Caraction {
    public CarService carservice;
    //Car
    public String id;
    public String pingpai;
    public String style;
    public String price;
    public String color;

    public String people;
    public String baoxian;
    public String weizhang;
    public String youhao;
    public String jing;

    public String shangbiao;
    public String shache;
    public String jiasu;
    public String panduan;
    public String beizhu;

    public String image;
    public String jibie;
    public String shuxing;
    public int count;
    public Date shop;

    public String zhuangtai;
    public String carid;

    //批量删除
    public int i;
    public String aa[];


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

    public String getZhuangtai() {
        return zhuangtai;
    }

    public void setZhuangtai(String zhuangtai) {
        this.zhuangtai = zhuangtai;
    }

    public String getCarid() {
        return carid;
    }

    public void setCarid(String carid) {
        this.carid = carid;
    }

    public CarService getCarservice() {
        return carservice;
    }

    public void setCarservice(CarService carservice) {
        this.carservice = carservice;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPingpai() {
        return pingpai;
    }

    public void setPingpai(String pingpai) {
        this.pingpai = pingpai;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getPeople() {
        return people;
    }

    public void setPeople(String people) {
        this.people = people;
    }

    public String getBaoxian() {
        return baoxian;
    }

    public void setBaoxian(String baoxian) {
        this.baoxian = baoxian;
    }

    public String getWeizhang() {
        return weizhang;
    }

    public void setWeizhang(String weizhang) {
        this.weizhang = weizhang;
    }

    public String getYouhao() {
        return youhao;
    }

    public void setYouhao(String youhao) {
        this.youhao = youhao;
    }

    public String getJing() {
        return jing;
    }

    public void setJing(String jing) {
        this.jing = jing;
    }

    public String getShangbiao() {
        return shangbiao;
    }

    public void setShangbiao(String shangbiao) {
        this.shangbiao = shangbiao;
    }

    public String getShache() {
        return shache;
    }

    public void setShache(String shache) {
        this.shache = shache;
    }

    public String getJiasu() {
        return jiasu;
    }

    public void setJiasu(String jiasu) {
        this.jiasu = jiasu;
    }

    public String getPanduan() {
        return panduan;
    }

    public void setPanduan(String panduan) {
        this.panduan = panduan;
    }

    public String getBeizhu() {
        return beizhu;
    }

    public void setBeizhu(String beizhu) {
        this.beizhu = beizhu;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getJibie() {
        return jibie;
    }

    public void setJibie(String jibie) {
        this.jibie = jibie;
    }

    public String getShuxing() {
        return shuxing;
    }

    public void setShuxing(String shuxing) {
        this.shuxing = shuxing;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public Date getShop() {
        return shop;
    }

    public void setShop(Date shop) {
        this.shop = shop;
    }

    public String car() {
        List list = (List) this.getCarservice().car();
        Map session = (Map) ActionContext.getContext().get("session");
        if (list.size() > 0) {
            session.put("car", list);
            return "success";
        } else {
            return "error";
        }
    }

    public String car_id() {
        List list = this.getCarservice().car_id(this.getId());
        Map request = (Map) ActionContext.getContext().get("request");
        if (list.size() > 0) {
            request.put("carid", list);
            return "success";
        } else {
            return "error";
        }
    }

    public String car_update() {
        List list = this.getCarservice().car_id(this.getId());
        Car car = (Car) list.get(0);
        car.setBeizhu(this.getBeizhu());
        System.out.print("getBeizhu");
        car.setWeizhang(this.getWeizhang());
        car.setZhuangtai(this.getZhuangtai());
        car.setPeople(this.getPeople());
        Map request = (Map) ActionContext.getContext().get("request");
        if (this.getCarservice().car_update(car)) {
            return "success";
        } else {
            return "error";
        }
    }

    public String car_delete() {
        List list = this.getCarservice().car_id(this.getId());
        Car car = (Car) list.get(0);
        car.setPanduan("2");
        Map request = (Map) ActionContext.getContext().get("request");
        if (this.getCarservice().car_delete(car)) {
            return "success";
        } else {
            return "error";
        }
    }

    public String car_del() {
        Map request = (Map) ActionContext.getContext().get("request");
        try {
            for (int i = 0; i < aa.length; i++) {
                this.i = i;
                car_d();
            }
            return "success";
        } catch (Exception e) {
            return "error";
        }
    }

    public String car_d() {
        List list = this.getCarservice().car_id(aa[i]);
        Car car = (Car) list.get(0);
        car.setPanduan("2");
        Map request = (Map) ActionContext.getContext().get("request");
        if (this.getCarservice().car_delete(car)) {
            return "success";
        } else {
            return "error";
        }
    }

    public String car_add() {
        Car car = new Car();
        car.setBaoxian(this.getBaoxian());
        car.setBeizhu(this.getBeizhu());
        car.setCarid(this.getCarid());
        car.setColor(this.getColor());
        car.setCount(this.getCount());
        car.setId(Lsh.getOn("id", "car"));
        System.out.println(Lsh.getOn("id", "car"));
        car.setImage(this.getUploadFileName());
        car.setJiasu(this.getJiasu());
        car.setJibie(this.getJibie());
        car.setJing(this.getJing());
        car.setPanduan("1");
        car.setPeople(this.getPeople());
        car.setPingpai(this.getPingpai());
        car.setPrice(this.getPrice());
        car.setShache(this.getShache());
        car.setShop(new Date());
        car.setShuxing(this.getShuxing());
        car.setStyle(this.getStyle());
        car.setWeizhang(this.getWeizhang());
        car.setYouhao(this.getYouhao());
        car.setZhuangtai(this.getZhuangtai());
        car.setShangbiao(this.getShangbiao());
        Map request = (Map) ActionContext.getContext().get("request");
        if (this.getCarservice().car_add(car)) {
            return "success";
        } else {
            return "error";
        }
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
        System.out.println("dao");
        //System.out.println(this.getTitle());
        System.out.println(this.getUpload());
        System.out.println(this.getUploadFileName());
        //System.out.println(this.getUploadFileName1());
        System.out.println(this.getUploadContentType());
        System.out.println(this.getSavePath());
//	以服务器的文件保存地址和原文件名建立上传文件输出流
        FileOutputStream fos = new FileOutputStream(getSavePath() + "\\" + this.getUploadFileName());
        //	以上传文件建立一个文件上传流
        FileInputStream fis = new FileInputStream(getUpload());
        //	将上传文件的内容写入服务器
        byte[] buffer = new byte[1024];
        int len = 0;
        while ((len = fis.read(buffer)) > 0) {
            fos.write(buffer, 0, len);
        }
        upload = null;
        return car_add();
    }

    public String ift() {
        List mp = this.getCarservice().ift(this.getId());
        Map session = (Map) ActionContext.getContext().get("session");
        if (mp.size() > 0) {
            session.put("car", mp);
            return "success";
        } else {
            return "error";
        }
    }
}