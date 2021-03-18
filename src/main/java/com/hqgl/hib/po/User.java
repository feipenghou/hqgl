package com.hqgl.hib.po;



public class User implements java.io.Serializable {

	// Fields

	private String id;
	private String pass;
	private String name;
	private String sex;
	private String birthday;
	private String address;
	private String phone;
	private String shengfen;
	private String xueli;
	private String minzu;
	private String panduan;
	private String email;
	private String photo;
	private String qq;
	private String jianjie;

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String id, String pass, String name) {
		this.id = id;
		this.pass = pass;
		this.name = name;
	}

	/** full constructor */
	public User(String id, String pass, String name, String sex,
			String birthday, String address, String phone, String shengfen,
			String xueli, String minzu, String panduan, String email,
			String photo, String qq,String jianjie) {
		this.id = id;
		this.pass = pass;
		this.name = name;
		this.sex = sex;
		this.birthday = birthday;
		this.address = address;
		this.phone = phone;
		this.shengfen = shengfen;
		this.xueli = xueli;
		this.minzu = minzu;
		this.panduan = panduan;
		this.email = email;
		this.photo = photo;
		this.qq = qq;
		this.jianjie=jianjie;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return this.pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirthday() {
		return this.birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getShengfen() {
		return this.shengfen;
	}

	public void setShengfen(String shengfen) {
		this.shengfen = shengfen;
	}

	public String getXueli() {
		return this.xueli;
	}

	public void setXueli(String xueli) {
		this.xueli = xueli;
	}

	public String getMinzu() {
		return this.minzu;
	}

	public void setMinzu(String minzu) {
		this.minzu = minzu;
	}

	public String getPanduan() {
		return this.panduan;
	}

	public void setPanduan(String panduan) {
		this.panduan = panduan;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getQq() {
		return this.qq;
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

}