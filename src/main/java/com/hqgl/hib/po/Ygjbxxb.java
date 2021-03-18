package com.hqgl.hib.po;



public class Ygjbxxb implements java.io.Serializable {

	// Fields

	private Integer yid;
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
	private String luoji;
	private String yemail;
	private String beizhu;
	private String pass;

	// Constructors

	/** default constructor */
	public Ygjbxxb() {
	}

	/** minimal constructor */
	public Ygjbxxb(Integer yid, String pass) {
		this.yid = yid;
		this.pass = pass;
	}

	/** full constructor */
	public Ygjbxxb(Integer yid, String yname, String yold, String yin,
			String yposition, String ydepartment, String ysex, String yface,
			String yaddress, String ynowaddress, String yphone, String luoji,
			String yemail, String beizhu, String pass) {
		this.yid = yid;
		this.yname = yname;
		this.yold = yold;
		this.yin = yin;
		this.yposition = yposition;
		this.ydepartment = ydepartment;
		this.ysex = ysex;
		this.yface = yface;
		this.yaddress = yaddress;
		this.ynowaddress = ynowaddress;
		this.yphone = yphone;
		this.luoji = luoji;
		this.yemail = yemail;
		this.beizhu = beizhu;
		this.pass = pass;
	}

	// Property accessors

	public Integer getYid() {
		return this.yid;
	}

	public void setYid(Integer yid) {
		this.yid = yid;
	}

	public String getYname() {
		return this.yname;
	}

	public void setYname(String yname) {
		this.yname = yname;
	}

	public String getYold() {
		return this.yold;
	}

	public void setYold(String yold) {
		this.yold = yold;
	}

	public String getYin() {
		return this.yin;
	}

	public void setYin(String yin) {
		this.yin = yin;
	}

	public String getYposition() {
		return this.yposition;
	}

	public void setYposition(String yposition) {
		this.yposition = yposition;
	}

	public String getYdepartment() {
		return this.ydepartment;
	}

	public void setYdepartment(String ydepartment) {
		this.ydepartment = ydepartment;
	}

	public String getYsex() {
		return this.ysex;
	}

	public void setYsex(String ysex) {
		this.ysex = ysex;
	}

	public String getYface() {
		return this.yface;
	}

	public void setYface(String yface) {
		this.yface = yface;
	}

	public String getYaddress() {
		return this.yaddress;
	}

	public void setYaddress(String yaddress) {
		this.yaddress = yaddress;
	}

	public String getYnowaddress() {
		return this.ynowaddress;
	}

	public void setYnowaddress(String ynowaddress) {
		this.ynowaddress = ynowaddress;
	}

	public String getYphone() {
		return this.yphone;
	}

	public void setYphone(String yphone) {
		this.yphone = yphone;
	}

	public String getLuoji() {
		return this.luoji;
	}

	public void setLuoji(String luoji) {
		this.luoji = luoji;
	}

	public String getYemail() {
		return this.yemail;
	}

	public void setYemail(String yemail) {
		this.yemail = yemail;
	}

	public String getBeizhu() {
		return this.beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}

	public String getPass() {
		return this.pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}