package com.hqgl.hib.po;



public class Fuzhuang implements java.io.Serializable {

	// Fields

	private String id;
	private String type;
	private String jianjie;
	private String money;
	private String panduan;
	private String lipin;
	private String photo;
	private String zhaopian;

	// Constructors

	/** default constructor */
	public Fuzhuang() {
	}

	/** minimal constructor */
	public Fuzhuang(String id) {
		this.id = id;
	}

	/** full constructor */
	public Fuzhuang(String id, String type, String jianjie, String money,
			String panduan, String lipin, String photo,String zhaopian) {
		this.id = id;
		this.type = type;
		this.jianjie = jianjie;
		this.money = money;
		this.panduan = panduan;
		this.lipin = lipin;
		this.photo = photo;
		this.zhaopian=zhaopian;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getJianjie() {
		return this.jianjie;
	}

	public void setJianjie(String jianjie) {
		this.jianjie = jianjie;
	}

	public String getMoney() {
		return this.money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getPanduan() {
		return this.panduan;
	}

	public void setPanduan(String panduan) {
		this.panduan = panduan;
	}

	public String getLipin() {
		return this.lipin;
	}

	public void setLipin(String lipin) {
		this.lipin = lipin;
	}

	public String getPhoto() {
		return this.photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getZhaopian() {
		return zhaopian;
	}

	public void setZhaopian(String zhaopian) {
		this.zhaopian = zhaopian;
	}

}