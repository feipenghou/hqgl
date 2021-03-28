package com.hqgl.action;

import com.hqgl.hib.po.Ygjbxxb;
import com.hqgl.service.IygService;
import com.opensymphony.xwork2.ActionContext;

import java.util.List;
import java.util.Map;


public class IygAction {

	//住入service层
	private IygService iygservice;
	
	public IygService getIygservice() {
		return iygservice;
	}


	public void setIygservice(IygService iygservice) {
		this.iygservice = iygservice;
	}
	
	
	//员工信息表（Ygjbxxb）
	private int yid;
	private String yname;
	private String yold;
	private String yin;
	private String yposition;
	private String ydepartment;
	private String ysex;
	private String yface;
	private String yaddress;
	private String ynowaddress;
	private String yphone;
	private String yemail;
	private String beizhu;
	private String pass;
	private String luoji;
	

	public int getYid() {
		return yid;
	}


	public void setYid(int yid) {
		this.yid = yid;
	}


	public String getYname() {
		return yname;
	}


	public void setYname(String yname) {
		this.yname = yname;
	}


	public String getYold() {
		return yold;
	}


	public void setYold(String yold) {
		this.yold = yold;
	}


	public String getYin() {
		return yin;
	}


	public void setYin(String yin) {
		this.yin = yin;
	}


	public String getYposition() {
		return yposition;
	}


	public void setYposition(String yposition) {
		this.yposition = yposition;
	}


	public String getYdepartment() {
		return ydepartment;
	}


	public void setYdepartment(String ydepartment) {
		this.ydepartment = ydepartment;
	}


	public String getYsex() {
		return ysex;
	}


	public void setYsex(String ysex) {
		this.ysex = ysex;
	}


	public String getYface() {
		return yface;
	}


	public void setYface(String yface) {
		this.yface = yface;
	}


	public String getYaddress() {
		return yaddress;
	}


	public void setYaddress(String yaddress) {
		this.yaddress = yaddress;
	}


	public String getYnowaddress() {
		return ynowaddress;
	}


	public void setYnowaddress(String ynowaddress) {
		this.ynowaddress = ynowaddress;
	}


	public String getYphone() {
		return yphone;
	}


	public void setYphone(String yphone) {
		this.yphone = yphone;
	}


	public String getYemail() {
		return yemail;
	}


	public void setYemail(String yemail) {
		this.yemail = yemail;
	}


	public String getBeizhu() {
		return beizhu;
	}


	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}


	public String getPass() {
		return pass;
	}


	public void setPass(String pass) {
		this.pass = pass;
	}
	
	public String getLuoji() {
		return luoji;
	}


	public void setLuoji(String luoji) {
		this.luoji = luoji;
	}

	
	
	// 添加员工信息
	public String yg_add() {
		Ygjbxxb ygjbxxb = new Ygjbxxb();
		ygjbxxb.setYid(this.getYid());
		ygjbxxb.setYname(this.getYname());
		ygjbxxb.setYsex(this.getYsex());
		ygjbxxb.setYaddress(this.getYaddress());
		ygjbxxb.setYdepartment(this.getYdepartment());
		ygjbxxb.setYemail(this.getYemail());
		ygjbxxb.setYface(this.getYface());
		ygjbxxb.setYin(this.getYin());
		ygjbxxb.setYnowaddress(this.getYnowaddress());
		ygjbxxb.setYold(this.getYold());
		ygjbxxb.setYphone(this.getYphone());
		ygjbxxb.setYposition(this.getYposition());
		ygjbxxb.setBeizhu(this.getBeizhu());
		ygjbxxb.setPass(this.getPass());
		ygjbxxb.setLuoji("1");
		Map request = (Map) ActionContext.getContext().get("request");
		if (this.getIygservice().yg_add(ygjbxxb)) {
			return "success";
		} else {
			return "error";
		}

	}

	// 批量添加员工信息
	private int firstplid[];
	private String firstplname[];
	private String firstplsex[];
	private String firstplold[];
	private String firstplface[];
	private String firstplyin[];
	private String firstpldepartment[];
	private String firstplposition[];
	private String firstpladdress[];
	private String firstplnowaddress[];
	private String firstplphone[];
	private String firstplemail[];
	private String firstplbeizhu[];
	private String firstplpass[];
	private String firstplluoji[];
	private String result;

	public String[] getFirstplpass() {
		return firstplpass;
	}

	public void setFirstplpass(String[] firstplpass) {
		this.firstplpass = firstplpass;
	}

	public String[] getFirstpldepartment() {
		return firstpldepartment;
	}

	public void setFirstpldepartment(String[] firstpldepartment) {
		this.firstpldepartment = firstpldepartment;
	}

	public int[] getFirstplid() {
		return firstplid;
	}

	public void setFirstplid(int[] firstplid) {
		this.firstplid = firstplid;
	}

	public String[] getFirstplname() {
		return firstplname;
	}

	public void setFirstplname(String[] firstplname) {
		this.firstplname = firstplname;
	}

	public String[] getFirstplsex() {
		return firstplsex;
	}

	public void setFirstplsex(String[] firstplsex) {
		this.firstplsex = firstplsex;
	}

	public String[] getFirstplold() {
		return firstplold;
	}

	public void setFirstplold(String[] firstplold) {
		this.firstplold = firstplold;
	}

	public String[] getFirstplface() {
		return firstplface;
	}

	public void setFirstplface(String[] firstplface) {
		this.firstplface = firstplface;
	}

	public String[] getFirstplyin() {
		return firstplyin;
	}

	public void setFirstplyin(String[] firstplyin) {
		this.firstplyin = firstplyin;
	}

	public String[] getFirstplposition() {
		return firstplposition;
	}

	public void setFirstplposition(String[] firstplposition) {
		this.firstplposition = firstplposition;
	}

	public String[] getFirstpladdress() {
		return firstpladdress;
	}

	public void setFirstpladdress(String[] firstpladdress) {
		this.firstpladdress = firstpladdress;
	}

	public String[] getFirstplnowaddress() {
		return firstplnowaddress;
	}

	public void setFirstplnowaddress(String[] firstplnowaddress) {
		this.firstplnowaddress = firstplnowaddress;
	}

	public String[] getFirstplphone() {
		return firstplphone;
	}

	public void setFirstplphone(String[] firstplphone) {
		this.firstplphone = firstplphone;
	}

	public String[] getFirstplemail() {
		return firstplemail;
	}

	public void setFirstplemail(String[] firstplemail) {
		this.firstplemail = firstplemail;
	}

	public String[] getFirstplbeizhu() {
		return firstplbeizhu;
	}

	public void setFirstplbeizhu(String[] firstplbeizhu) {
		this.firstplbeizhu = firstplbeizhu;
	}

	public String[] getFirstplluoji() {
		return firstplluoji;
	}


	public void setFirstplluoji(String[] firstplluoji) {
		this.firstplluoji = firstplluoji;
	}

	// 查看员工信息
	public String yg_display() {
		ActionContext actionContext = ActionContext.getContext();
		List list = this.getIygservice().yg_display();
		Map request = (Map) ActionContext.getContext().get("request");
		if (list.size() > 0) {
			request.put("list", list);
			return "success";
		} else {
			return "error";
		}
	}

	// 查看单个员工
	public String yg_cha() {
		Map request = (Map) ActionContext.getContext().get("request");
		List list = this.getIygservice().yg_cha(this.getYid(),
				this.getYname());
		if (list.size() > 0) {
			request.put("list", list);
			return "success";
		} else {
			return "error";
		}
	}
  //修改员工信息
	   public String yg_updateone() {
		List list = this.getIygservice().yg_display();
		Ygjbxxb ygjbxxb = (Ygjbxxb) list.get(0);

		ygjbxxb.setYid(this.getYid());
		ygjbxxb.setYname(this.getYname());
		ygjbxxb.setYsex(this.getYsex());
		ygjbxxb.setYaddress(this.getYaddress());
		ygjbxxb.setYdepartment(this.getYdepartment());
		ygjbxxb.setYemail(this.getYemail());
		ygjbxxb.setYface(this.getYface());
		ygjbxxb.setYin(this.getYin());
		ygjbxxb.setYnowaddress(this.getYnowaddress());
		ygjbxxb.setYold(this.getYold());
		ygjbxxb.setYphone(this.getYphone());
		ygjbxxb.setYposition(this.getYposition());
		ygjbxxb.setBeizhu(this.getBeizhu());
		ygjbxxb.setPass(this.getPass());
		Map request = (Map) ActionContext.getContext().get("request");
		if (this.getIygservice().yg_updateone(ygjbxxb)) {
			request.put("list", list);
			return "success";
		} else {
			return "error";
		}

	}
// 根据查看ID进行操作
	public String yg_id() {
		List onelist = this.getIygservice().yg_id(yid);
		Map request = (Map) ActionContext.getContext().get("request");
		if (onelist.size() > 0) {
			request.put("onelist", onelist);
			return "success";
		} else {
			return "error";
		}

	}

	// 根据Id进行修改员工信息
	public String yg_update() {
		List onelist = this.getIygservice().yg_id(this.getYid());
		Ygjbxxb ygjbxxb = (Ygjbxxb)onelist.get(0);


		ygjbxxb.setYname(this.getYname());
		ygjbxxb.setYsex(this.getYsex());
		ygjbxxb.setYaddress(this.getYaddress());
		ygjbxxb.setYdepartment(this.getYdepartment());
		ygjbxxb.setYemail(this.getYemail());
		ygjbxxb.setYface(this.getYface());
		ygjbxxb.setYin(this.getYin());
		ygjbxxb.setYnowaddress(this.getYnowaddress());
		ygjbxxb.setYold(this.getYold());
		ygjbxxb.setYphone(this.getYphone());
		ygjbxxb.setYposition(this.getYposition());
		ygjbxxb.setBeizhu(this.getBeizhu());
System.out.println("1"+this.getBeizhu());
		Map request = (Map) ActionContext.getContext().get("request");
		if (this.getIygservice().yg_update(ygjbxxb)) {
			request.put("onelist", onelist);
			return "success";
		} else {
			return "error";
		}

	}
	
	
	//批量删除
	private int delete[];
	public int[] getDelete() {
		return delete;
	}

	public void setDelete(int[] delete) {
		this.delete = delete;
	}

	
	private int i;
	
	public int getI() {
		return i;
	}

	public void setI(int i) {
		this.i = i;
	}
	
	// 删除员工信息(逻辑删除)
	public String yg_delete(){
		List list=this.getIygservice().yg_id(this.getYid());
		
		Ygjbxxb ygjbxxb=(Ygjbxxb)list.get(0);
		ygjbxxb.setLuoji("0");
		Map request=(Map) ActionContext.getContext().get("request");
		if(this.getIygservice().yg_delete(ygjbxxb)){
			request.put("message",ygjbxxb);
			return "success";
		}
		else
		{
			return "error";
		}
	}
    
	// 批量删除员工信息(逻辑删除)
	public String yg_d() {

		Map session = (Map) ActionContext.getContext().get("session");
		try {
			for (int j = 0; j < delete.length; j++) {
				this.i = j;
				yg_de();
			}
			String m = "'<script>alert('恭喜删除成功!');location.href='a_geall.action';</script>');";
			session.put("m", m);
			return "success";
		} catch (Exception e) {
			String m = "('<script>alert('删除失败！');location.href='u_geall.action';</script>');";
			return "error";
		}
	}
	
	//逻辑删除
	public String yg_de() {
		List yg_delete = this.getIygservice().yg_id(delete[i]);
		Ygjbxxb ygjbxxb = (Ygjbxxb)yg_delete.get(0);
		ygjbxxb.setLuoji("0");
		if(this.getIygservice().yg_delete(ygjbxxb))
		{
			return "success";
		}
		else
		{
			return "error";
		}
	}

	
	// 查看已删员工
	public String yg_yishan() {
		ActionContext actionContext = ActionContext.getContext();
		Map request = (Map) ActionContext.getContext().get("request");
		List list = (List) this.getIygservice().yg_yishan();
		if (list.size() > 0) {
			request.put("list", list);
			return "success";
		} else {
			return "error";
		}
	}

	// 恢复已删员工
	public String yg_huifu() {
		List list = this.getIygservice().yg_id(yid);
		Ygjbxxb ygjbxxb = (Ygjbxxb) list.get(0);
		ygjbxxb.setLuoji("1");
		Map request = (Map) ActionContext.getContext().get("request");
		if (this.getIygservice().yg_huifu(ygjbxxb)) {
			return "success";
		} else {
			return "error";
		}
	}

	//批量恢复员工信息
	
	//批量恢复
	//恢复
	public String yg_hf()
	{
		List list=this.getIygservice().yg_id(delete[i]);
		Ygjbxxb ygjbxxb=(Ygjbxxb)list.get(0);
		ygjbxxb.setLuoji("1");
		if(this.getIygservice().yg_huifu(ygjbxxb))
		{
			return "success";
		}
		else
		{
			return "error";
		}
	}
	
	
	//批量恢复员工信息
	
	public String yg_h()
	{ 
		Map request=(Map) ActionContext.getContext().get("request");
		try{
			for(int i=0;i<delete.length;i++)
			
			{
				this.i=i;
				yg_hf();
			}
			
			return "success";
		}
		catch(Exception e)
		{
			return "error";
		}
	}
	
	
	
	//批量（物理性删除）
	private int[] DelBulletinId;
	

	public int[] getDelBulletinId() {
		return DelBulletinId;
	}
	
	public void setDelBulletinId(int[] delBulletinId) {
		DelBulletinId = delBulletinId;
	}
	
	
	
	// 删除员工（物理性删除）
	public String yg_deletecd() {
		List list = this.getIygservice().yg_id(yid);
		Ygjbxxb ygjbxxb = (Ygjbxxb) list.get(0);
		Map request = (Map) ActionContext.getContext().get("request");
		if (this.getIygservice().yg_deletecd(ygjbxxb)) {
			request.put("list", list);
			return "success";
		} else {
			return "error";
		}
	}

	// 批量性彻底删除员工
	public String yg_deleteall() {
		Map request = (Map) ActionContext.getContext().get("request");
		try {
			for (int i = 0; i < DelBulletinId.length; i++)

			{
				this.i = i;
				plcddeleteyg1();
			}
			result = "<script language='javascript'>alert('操作成功！');window.location.href='DispBulletinsList.action'; </script>";
			request.put("result", result);
			return "success";

		} catch (Exception e) {
			return "error";
		}

	}

	//删除员工信息（物理性删除）
	public void plcddeleteyg1() {
		List list = (List) this.getIygservice().yg_id(DelBulletinId[i]);
		Ygjbxxb ygjbxxb = (Ygjbxxb) list.get(0);
		this.getIygservice().yg_deleteall(ygjbxxb);

	}


	
	
	
	
}
