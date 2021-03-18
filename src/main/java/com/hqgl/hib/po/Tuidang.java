package com.hqgl.hib.po;



public class Tuidang implements java.io.Serializable {

	// Fields

	private String TNumber;
	private String TName;
	private String TSex;
	private String TDate;
	private String TBeizhu;
	private String TPhone;
	private String TEmail;
	private String TAddress;
	private String TCareid;

	// Constructors

	/** default constructor */
	public Tuidang() {
	}

	/** minimal constructor */
	public Tuidang(String TNumber) {
		this.TNumber = TNumber;
	}

	/** full constructor */
	public Tuidang(String TNumber, String TName, String TSex, String TDate,
			String TBeizhu, String TPhone, String TEmail, String TAddress,
			String TCareid) {
		this.TNumber = TNumber;
		this.TName = TName;
		this.TSex = TSex;
		this.TDate = TDate;
		this.TBeizhu = TBeizhu;
		this.TPhone = TPhone;
		this.TEmail = TEmail;
		this.TAddress = TAddress;
		this.TCareid = TCareid;
	}

	// Property accessors

	public String getTNumber() {
		return this.TNumber;
	}

	public void setTNumber(String TNumber) {
		this.TNumber = TNumber;
	}

	public String getTName() {
		return this.TName;
	}

	public void setTName(String TName) {
		this.TName = TName;
	}

	public String getTSex() {
		return this.TSex;
	}

	public void setTSex(String TSex) {
		this.TSex = TSex;
	}

	public String getTDate() {
		return this.TDate;
	}

	public void setTDate(String TDate) {
		this.TDate = TDate;
	}

	public String getTBeizhu() {
		return this.TBeizhu;
	}

	public void setTBeizhu(String TBeizhu) {
		this.TBeizhu = TBeizhu;
	}

	public String getTPhone() {
		return this.TPhone;
	}

	public void setTPhone(String TPhone) {
		this.TPhone = TPhone;
	}

	public String getTEmail() {
		return this.TEmail;
	}

	public void setTEmail(String TEmail) {
		this.TEmail = TEmail;
	}

	public String getTAddress() {
		return this.TAddress;
	}

	public void setTAddress(String TAddress) {
		this.TAddress = TAddress;
	}

	public String getTCareid() {
		return this.TCareid;
	}

	public void setTCareid(String TCareid) {
		this.TCareid = TCareid;
	}

}