package com.hqgl.action;

import com.hqgl.hib.po.Dingdan;
import com.hqgl.hib.po.Kehu;
import com.hqgl.hib.po.Tuidang;
import com.hqgl.service.IkehuService;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class IkehuAction {
    public IkehuService ikehuservice;

    public IkehuService getIkehuservice() {
        return ikehuservice;
    }

    public void setIkehuservice(IkehuService ikehuservice) {
        this.ikehuservice = ikehuservice;
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

    //??????
    private String DNumber;
    private String DName;
    private String DSex;
    private String DRiqi;
    private String DCareid;
    private String DAddress;
    private String DEmail;
    private String DPhone;
    private String pandaun;
    //?˵???
    private String TNumber;
    private String TName;
    private String TSex;
    private String TDate;
    private String TBeizhu;
    private String TPhone;
    private String TEmail;
    private String TAddress;
    private String TCareid;

    public String getTNumber() {
        return TNumber;
    }

    public void setTNumber(String number) {
        TNumber = number;
    }

    public String getTName() {
        return TName;
    }

    public void setTName(String name) {
        TName = name;
    }

    public String getTSex() {
        return TSex;
    }

    public void setTSex(String sex) {
        TSex = sex;
    }

    public String getTDate() {
        return TDate;
    }

    public void setTDate(String date) {
        TDate = date;
    }

    public String getTBeizhu() {
        return TBeizhu;
    }

    public void setTBeizhu(String beizhu) {
        TBeizhu = beizhu;
    }

    public String getTPhone() {
        return TPhone;
    }

    public void setTPhone(String phone) {
        TPhone = phone;
    }

    public String getTEmail() {
        return TEmail;
    }

    public void setTEmail(String email) {
        TEmail = email;
    }

    public String getTAddress() {
        return TAddress;
    }

    public void setTAddress(String address) {
        TAddress = address;
    }

    public String getTCareid() {
        return TCareid;
    }

    public void setTCareid(String careid) {
        TCareid = careid;
    }

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

    public String addkehuid() {
        List addkehuidlist = this.getIkehuservice().addkehuid();
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
    //??װ?ϴ??ļ????͵?????
    private String uploadContentType;
    //??װ?ϴ??ļ?????????
    private String uploadFileName;
    //????????ע????????
    private String savePath;
    //??????Action?????ϴ????ļ?????
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
     * ?ϴ?
     * */
    public String upload() throws IOException {
//	?Է????????ļ???????ַ??ԭ?ļ????????ϴ??ļ???????
        FileOutputStream fos = new FileOutputStream(getSavePath() + "\\" + this.getUploadFileName());
//	???ϴ??ļ?????һ???ļ??ϴ???
        FileInputStream fis = new FileInputStream(getUpload());
//	???ϴ??ļ???????д????????
        byte[] buffer = new byte[1024];
        int len = 0;
        while ((len = fis.read(buffer)) > 0) {
            fos.write(buffer, 0, len);
        }
        upload = null;
        return addkehu();
    }

    public String addkehu() {
        Kehu kehu = new Kehu();
        kehu.setKNumber(Lsh.getOn("k_number", "kehu"));
        kehu.setKName(this.getKName());
        kehu.setKSex(this.getKSex());
        kehu.setKCareid(this.getKCareid());
        kehu.setKAddress(this.getKAddress() + this.getAddress());
        kehu.setKEmail(this.getKEmail());
        kehu.setKPhone(this.getKPhone());
        kehu.setKTx(this.getUploadFileName());
        kehu.setKDate(this.getKDate());
        kehu.setPanduan("1");
        if (this.getIkehuservice().addkehu(kehu)) {
            return "success";
        } else {
            return "error";
        }
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    //?鿴?ͻ???Ϣ
    public String kehumanage() {
        List workerslist = this.getIkehuservice().kehumanage(this.getPanduan());
        Map session = (Map) ActionContext.getContext().get("session");
        session.put("kehulist", workerslist);
        if (workerslist.size() > 0) {
            return "success";
        } else {
            return "error";

        }
    }

    //?鿴?ͻ???????Ϣ
    public String kehujuti() {
        List kehujutilist = (List) this.getIkehuservice().kehujuti(this.getKNumber());
        Map session = (Map) ActionContext.getContext().get("session");
        if (kehujutilist.size() > 0) {
            session.put("kehujutilist", kehujutilist);

            return "ok";
        }
        return "no";
    }

    //?޸Ŀͻ???Ϣ
    public String updatekehuid() {
        List updatekehuidlist = this.getIkehuservice().updatekehuid(this.getKNumber(), this.getPanduan());
        Map request = (Map) ActionContext.getContext().get("request");
        if (updatekehuidlist.size() > 0) {
            request.put("updatekehuidlist", updatekehuidlist);
            return "ok";
        } else {
            return "error";
        }
    }

    public String updatekehu() {
        List updatekehuidlist = this.getIkehuservice().updatekehuid(this.getKNumber(), this.getPanduan());
        Kehu kehu = (Kehu) updatekehuidlist.get(0);
        kehu.setKName(this.getKName());
        kehu.setKSex(this.getKSex());
        kehu.setKCareid(this.getKCareid());
        kehu.setKDate(this.getKDate());
        kehu.setKAddress(this.getKAddress() + this.getAddress());
        kehu.setKPhone(this.getKPhone());
        kehu.setKEmail(this.getKEmail());
        if (this.getIkehuservice().updatekehu(kehu)) {
            return "ok";
        } else {
            return "no";
        }
    }

    //ɾ???ͻ???Ϣ
    public String deletekehuidid() {
        List deletekehuidlist = this.getIkehuservice().deletekehuid(this.getKNumber());
        Map session = (Map) ActionContext.getContext().get("session");
        if (deletekehuidlist.size() > 0) {
            session.put("deletekehuidlist", deletekehuidlist);
            return "success";
        } else {
            return "error";
        }
    }

    public String detelekehu() {
        List detelekehulist = this.getIkehuservice().deletekehuid(this.getKNumber());
        Kehu kehu = (Kehu) detelekehulist.get(0);
        kehu.setPanduan("0");
        Map session = (Map) ActionContext.getContext().get("session");
        if (this.getIkehuservice().deletekehu(kehu)) {
            session.put("detelekehulist", detelekehulist);
            return "success";
        } else {
            return "error";
        }
    }


    //????????????ģ??

    //???Ӷ???
    public String tianjiadingdan() {
        List tianjiadingdanlist = this.getIkehuservice().addkehuid();
        Map session = (Map) ActionContext.getContext().get("session");
        if (tianjiadingdanlist.size() > 0) {
            session.put("tianjiadingdanlist", tianjiadingdanlist);
            return "ok";
        }
        return "no";
    }

    public String tianjia() {
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
        if (this.getIkehuservice().tianjia(dingdan)) {
            return "success";
        } else {
            return "error";
        }
    }

    //?鿴??????Ϣ
    public String dingdanmanage() {
        List dingdanlist = this.getIkehuservice().dingdanmanage(this.getPandaun());
        Map session = (Map) ActionContext.getContext().get("session");
        session.put("dingdanlist", dingdanlist);
        if (dingdanlist.size() > 0) {
            return "success";
        } else {
            return "error";

        }
    }

    //?鿴???嶩????Ϣ
    public String dingdanjuti() {
        List kehujutilist = (List) this.getIkehuservice().dingdanjuti(this.getDNumber());
        Map session = (Map) ActionContext.getContext().get("session");
        if (kehujutilist.size() > 0) {
            session.put("dingdanjutilist", kehujutilist);

            return "ok";
        }
        return "no";
    }
    //?Ӷ??????ӿͻ?

    public String adddingdan() {
        Map session = (Map) ActionContext.getContext().get("session");
        Kehu kehu = new Kehu();
        String kehu1 = Lsh.getOn("k_number", "kehu");
        kehu.setKNumber(kehu1);
        kehu.setKName(this.getKName());
        kehu.setKSex(this.getKSex());
        kehu.setKCareid(this.getKCareid());
        kehu.setKAddress(this.getKAddress());
        kehu.setKEmail(this.getKEmail());
        kehu.setKPhone(this.getKPhone());
        kehu.setKDate(this.getKDate());
        kehu.setPanduan("1");
        List list = this.getIkehuservice().dingdanjuti(this.getDNumber());
        Dingdan ding = (Dingdan) list.get(0);
        ding.setPanduan("0");
        if (this.getIkehuservice().adddingdan(kehu, ding)) {
            return "success";
        } else {
            return "error";
        }
    }
    //ɾ??????

    public String deletedingdan() {
        Tuidang tuidang = new Tuidang();
        String kehu1 = Lsh.getOn("t_number", "tuidang");
        tuidang.setTNumber(kehu1);
        tuidang.setTName(this.getTName());
        tuidang.setTSex(this.getTSex());
        tuidang.setTCareid(this.getTCareid());
        tuidang.setTAddress(this.getTAddress());
        tuidang.setTEmail(this.getTEmail());
        tuidang.setTPhone(this.getTPhone());
        tuidang.setTDate(this.getTDate());
        tuidang.setTBeizhu(this.getTBeizhu());
        List list = this.getIkehuservice().dingdanjuti(this.getDNumber());
        Dingdan dingdan = (Dingdan) list.get(0);
        dingdan.setPanduan("0");
        if (this.getIkehuservice().deletedingdan(tuidang, dingdan)) {
            return "success";
        } else {
            return "error";
        }
    }

    //?鿴?˵???Ϣ
    public String tuidanmanage() {
        List tuidanlist = this.getIkehuservice().tuidanmanage();
        Map session = (Map) ActionContext.getContext().get("session");
        session.put("tuidanmanagelist", tuidanlist);
        if (tuidanlist.size() > 0) {
            return "success";
        } else {
            return "error";

        }
    }

    public String getPandaun() {
        return pandaun;
    }

    public void setPandaun(String pandaun) {
        this.pandaun = pandaun;
    }

    //?鿴?????˵???Ϣ
    public String tuidanjuti() {
        List tuidanjutilist = (List) this.getIkehuservice().tuidanjuti(this.getTNumber());
        Map session = (Map) ActionContext.getContext().get("session");
        if (tuidanjutilist.size() > 0) {
            session.put("tuidanjutilist", tuidanjutilist);
            return "ok";
        }
        return "no";
    }
}
