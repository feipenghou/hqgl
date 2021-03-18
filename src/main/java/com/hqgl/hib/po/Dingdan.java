package com.hqgl.hib.po;



public class Dingdan implements java.io.Serializable {

	// Fields

	private String DNumber;
	private String DName;
	private String DSex;
	private String DRiqi;
	private String DCareid;
	private String DAddress;
	private String DEmail;
	private String DPhone;
	private String panduan;

	// Constructors

	/** default constructor */
	public Dingdan() {
	}

	/** minimal constructor */
	public Dingdan(String DNumber, String DName, String DSex, String DRiqi,
			String DCareid, String DAddress, String DPhone) {
		this.DNumber = DNumber;
		this.DName = DName;
		this.DSex = DSex;
		this.DRiqi = DRiqi;
		this.DCareid = DCareid;
		this.DAddress = DAddress;
		this.DPhone = DPhone;
	}

	/** full constructor */
	public Dingdan(String DNumber, String DName, String DSex, String DRiqi,
			String DCareid, String DAddress, String DEmail, String DPhone,
			String panduan) {
		this.DNumber = DNumber;
		this.DName = DName;
		this.DSex = DSex;
		this.DRiqi = DRiqi;
		this.DCareid = DCareid;
		this.DAddress = DAddress;
		this.DEmail = DEmail;
		this.DPhone = DPhone;
		this.panduan = panduan;
	}

	// Property accessors

	public String getDNumber() {
		return this.DNumber;
	}

	public void setDNumber(String DNumber) {
		this.DNumber = DNumber;
	}

	public String getDName() {
		return this.DName;
	}

	public void setDName(String DName) {
		this.DName = DName;
	}

	public String getDSex() {
		return this.DSex;
	}

	public void setDSex(String DSex) {
		this.DSex = DSex;
	}

	public String getDRiqi() {
		return this.DRiqi;
	}

	public void setDRiqi(String DRiqi) {
		this.DRiqi = DRiqi;
	}

	public String getDCareid() {
		return this.DCareid;
	}

	public void setDCareid(String DCareid) {
		this.DCareid = DCareid;
	}

	public String getDAddress() {
		return this.DAddress;
	}

	public void setDAddress(String DAddress) {
		this.DAddress = DAddress;
	}

	public String getDEmail() {
		return this.DEmail;
	}

	public void setDEmail(String DEmail) {
		this.DEmail = DEmail;
	}

	public String getDPhone() {
		return this.DPhone;
	}

	public void setDPhone(String DPhone) {
		this.DPhone = DPhone;
	}

	public String getPanduan() {
		return this.panduan;
	}

	public void setPanduan(String panduan) {
		this.panduan = panduan;
	}

}