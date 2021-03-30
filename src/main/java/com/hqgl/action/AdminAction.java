package com.hqgl.action;

import com.hqgl.hib.po.User;
import com.hqgl.service.AdminService;
import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

public class AdminAction {
	private AdminService adminservice;
	public AdminService getAdminservice() {
		return adminservice;
	}
	public void setAdminservice(AdminService adminservice) {
		this.adminservice = adminservice;
	}
	//user表
	private String id;
	private String pass;
	private String name;
	private String sex;
	private String birthday;
	private String address;
	private String addresss;
	private String phone;
	private String shengfen;
	private String xueli;
	private String minzu;
	private String panduan;
	private String email;
	private String photo;
	private String qq;
	private String jianjie;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getShengfen() {
		return shengfen;
	}
	public void setShengfen(String shengfen) {
		this.shengfen = shengfen;
	}
	public String getXueli() {
		return xueli;
	}
	public void setXueli(String xueli) {
		this.xueli = xueli;
	}
	public String getMinzu() {
		return minzu;
	}
	public void setMinzu(String minzu) {
		this.minzu = minzu;
	}
	public String getPanduan() {
		return panduan;
	}
	public void setPanduan(String panduan) {
		this.panduan = panduan;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getJianjie() {
		return jianjie;
	}
	public void setJianjie(String jianjie) {
		this.jianjie = jianjie;
	}
	public String getAddresss() {
		return addresss;
	}
	public void setAddresss(String addresss) {
		this.addresss = addresss;
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
	public String upload() throws IOException{
//		以服务器的文件保存地址和原文件名建立上传文件输出流
		FileOutputStream fos=new FileOutputStream(getSavePath()+"\\"+this.getUploadFileName());
//		以上传文件建立一个文件上传流
		FileInputStream fis=new FileInputStream(getUpload());
//		将上传文件的内容写入服务器
		byte[] buffer=new byte[1024];
		int len=0;
		while((len=fis.read(buffer))>0){
			fos.write(buffer,0,len);
			}
		upload=null;
		return admin_add("1");
	}
	public String uploadpt() throws IOException{
//		以服务器的文件保存地址和原文件名建立上传文件输出流
		FileOutputStream fos=new FileOutputStream(getSavePath()+"\\"+this.getUploadFileName());
//		以上传文件建立一个文件上传流
		FileInputStream fis=new FileInputStream(getUpload());
//		将上传文件的内容写入服务器
		byte[] buffer=new byte[1024];
		int len=0;
		while((len=fis.read(buffer))>0){
			fos.write(buffer,0,len);
			}
		upload=null;
		return admin_add("0");
	}

	//添加管理员 
	public String admin_add(String panduan){
		User user=new User();
		user.setAddress(this.getAddress()+this.getAddresss());
		user.setBirthday(this.getBirthday());
		user.setEmail(this.getEmail());
		user.setId(Lsh.getOn("id", "user"));
		user.setJianjie(this.getJianjie());
		user.setMinzu(this.getMinzu());
		user.setName(this.getName());
		user.setPanduan(panduan);
		user.setPass(this.getPass());
		user.setPhone(this.getPhone());
		user.setQq(this.getQq());
		user.setSex(this.getSex());
		user.setShengfen(this.getShengfen());
		user.setXueli(this.getXueli());
		user.setPhoto(this.getUploadFileName());
		if(this.getAdminservice().admin_add(user)){
			return "success";
		}else{
			return "error";
		}
	}
	//根据ID查看一条信息
	public String admin_id(){
		List adminlist=this.getAdminservice().admin_id(this.getId());
		Map session=(Map) ActionContext.getContext().get("session");
		if(adminlist.size()>0){
			session.put("adminlist",adminlist );
			return "success";
		}else{
			return 	"error";
		}
	}
	//修改管理员
	public String admin_update(){
		List adminlist=this.getAdminservice().admin_id(this.getId());
		User user=(User)adminlist.get(0);
		user.setAddress(this.getAddress()+this.getAddresss());
		user.setBirthday(this.getBirthday());
		user.setEmail(this.getEmail());
		user.setJianjie(this.getJianjie());
		user.setMinzu(this.getMinzu());
		user.setName(this.getName());
		user.setPass(this.getPass());
		user.setPhone(this.getPhone());
		user.setQq(this.getQq());
		user.setSex(this.getSex());
		user.setShengfen(this.getShengfen());
		user.setXueli(this.getXueli());
		if(this.getAdminservice().admin_update(user)){
			return "success";}
			else{
			return 	"error";
			}
		}
	//删除管理员
	public String admin_delete(){
		List adminlist=this.getAdminservice().admin_id(aa[i]);
		User user=(User)adminlist.get(0);
		if(this.getAdminservice().admin_delete(user)){
			return "success";}
			else{
			return 	"error";
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
	public String admin_d(){
		try{
			for(int i=0;i<aa.length;i++){
				this.i=i;
				admin_delete();
			}	
			return "success";
		}catch(Exception e){
			return "error";
		}
	}
	//修改密码
	public String xgmm(){
		List adminlist=this.getAdminservice().admin_id(this.getId());
		User user=(User)adminlist.get(0);
		user.setPass(this.getPass());
		Map session=(Map) ActionContext.getContext().get("session");
		if(this.getAdminservice().xgmm(user)){
			return "success";
		}else{
			return "error";
		}
		
	}	
}