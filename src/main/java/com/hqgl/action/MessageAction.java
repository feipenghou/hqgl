package com.hqgl.action;

import com.hqgl.hib.po.Livemessage;
import com.hqgl.service.MessageService;
import com.opensymphony.xwork2.ActionContext;

import java.util.Date;
import java.util.List;
import java.util.Map;

public class MessageAction {
	public MessageService messageservice;
	public String id;
	public String liveh; 
	public String livep;
	public String livecon;
	public String livezhu;
	public String livere;
	public String panduan;
	public String livetime;
	public String retime;
	public String recon;
	
	public int i;
	public String aa[];
	
	public MessageService getMessageservice() {
		return messageservice;
	}
	public void setMessageservice(MessageService messageservice) {
		this.messageservice = messageservice;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLiveh() {
		return liveh;
	}
	public void setLiveh(String liveh) {
		this.liveh = liveh;
	}
	public String getLivep() {
		return livep;
	}
	public void setLivep(String livep) {
		this.livep = livep;
	}
	public String getLivecon() {
		return livecon;
	}
	public void setLivecon(String livecon) {
		this.livecon = livecon;
	}
	public String getLivezhu() {
		return livezhu;
	}
	public void setLivezhu(String livezhu) {
		this.livezhu = livezhu;
	}
	public String getLivere() {
		return livere;
	}
	public void setLivere(String livere) {
		this.livere = livere;
	}
	public String getPanduan() {
		return panduan;
	}
	public void setPanduan(String panduan) {
		this.panduan = panduan;
	}
	public String getLivetime() {
		return livetime;
	}
	public void setLivetime(String livetime) {
		this.livetime = livetime;
	}
	public String getRetime() {
		return retime;
	}
	public void setRetime(String retime) {
		this.retime = retime;
	}
	public String getRecon() {
		return recon;
	}
	public void setRecon(String recon) {
		this.recon = recon;
	}
	
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
	//添加留言
	public String mess_add(){
		Livemessage livemessage=new Livemessage();
		livemessage.setId(Lsh.getOn("id","livemessage"));
		livemessage.setLivecon(this.getLivecon());
		livemessage.setLiveh(this.getLiveh());
		livemessage.setLivep(this.getLivep());
		livemessage.setLivere("无回复");
		livemessage.setLivetime(new Date());
		livemessage.setLivezhu("未读");
		livemessage.setPanduan("1");
		if(this.getMessageservice().mess_add(livemessage)){
			return "success";
		}
		else{
			return "error";
		}
	}
	// 查看
	public String mess(){
		List list=(List)this.messageservice.mess();
		Map session=(Map) ActionContext.getContext().get("session");
		if(list.size()>0){
			session.put("mess",list);
			return "success";
		}else{
			return "error";	}
	}
	public String mess_id(){
		List list = this.getMessageservice().mess_id(this.getId());
		Map request = (Map) ActionContext.getContext().get("request");
		if (list.size() > 0) {
			request.put("messid", list);
			return "success";
		} else {
			return "error";
		} 
	}
	public String mess_update(){
		List list=this.getMessageservice().mess_id(this.getId());
		Livemessage livemessage=(Livemessage)list.get(0);
		livemessage.setLivere(this.getLivere());
		livemessage.setLivezhu("已读");
		livemessage.setRetime(new Date());
		if (this.getMessageservice().mess_update(livemessage)) {
			return "success";
		}else{		
			return "error";
		}
	}
	public String mess_delete(){
		List list=this.getMessageservice().mess_id(this.getId());
		Livemessage livemessage=(Livemessage)list.get(0);
		livemessage.setPanduan("0");
		if (this.getMessageservice().mess_delete(livemessage)) {
			return "success";
		}else{		
			return "error";
		}
	}
	public String mess_del()
	{ 
		Map request=(Map) ActionContext.getContext().get("request");
		try{
			for(int i=0;i<aa.length;i++)			
			{
				this.i=i;
				mess_d();
			}	
			return "success";
		}
		catch(Exception e)
		{
			return "error";
		}
	}
	public String mess_d(){
		List list=this.getMessageservice().mess_id(aa[i]);
		Livemessage livemessage=(Livemessage)list.get(0);
		livemessage.setPanduan("0");
		if (this.getMessageservice().mess_delete(livemessage)) {
			return "success";
		}
		else
		{
			return "error";
		}
	}
}
