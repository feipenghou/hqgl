package com.hqgl.hib.po;



public class Kehu implements java.io.Serializable {

	// Fields

	private String KNumber;
	private String KName;
	private String KSex;
	private String KPhone;
	private String KAddress;
	private String KTx;
	private String KCareid;
	private String KEmail;
	private String panduan;
	private String KDate;

	// Constructors

	/** default constructor */
	public Kehu() {
	}

	/** minimal constructor */
	public Kehu(String KNumber, String KName, String KSex, String KPhone,
			String panduan, String KDate) {
		this.KNumber = KNumber;
		this.KName = KName;
		this.KSex = KSex;
		this.KPhone = KPhone;
		this.panduan = panduan;
		this.KDate = KDate;
	}

	/** full constructor */
	public Kehu(String KNumber, String KName, String KSex, String KPhone,
			String KAddress, String KTx, String KCareid, String KEmail,
			String panduan, String KDate) {
		this.KNumber = KNumber;
		this.KName = KName;
		this.KSex = KSex;
		this.KPhone = KPhone;
		this.KAddress = KAddress;
		this.KTx = KTx;
		this.KCareid = KCareid;
		this.KEmail = KEmail;
		this.panduan = panduan;
		this.KDate = KDate;
	}

	// Property accessors

	public String getKNumber() {
		return this.KNumber;
	}

	public void setKNumber(String KNumber) {
		this.KNumber = KNumber;
	}

	public String getKName() {
		return this.KName;
	}

	public void setKName(String KName) {
		this.KName = KName;
	}

	public String getKSex() {
		return this.KSex;
	}

	public void setKSex(String KSex) {
		this.KSex = KSex;
	}

	public String getKPhone() {
		return this.KPhone;
	}

	public void setKPhone(String KPhone) {
		this.KPhone = KPhone;
	}

	public String getKAddress() {
		return this.KAddress;
	}

	public void setKAddress(String KAddress) {
		this.KAddress = KAddress;
	}

	public String getKTx() {
		return this.KTx;
	}

	public void setKTx(String KTx) {
		this.KTx = KTx;
	}

	public String getKCareid() {
		return this.KCareid;
	}

	public void setKCareid(String KCareid) {
		this.KCareid = KCareid;
	}

	public String getKEmail() {
		return this.KEmail;
	}

	public void setKEmail(String KEmail) {
		this.KEmail = KEmail;
	}

	public String getPanduan() {
		return this.panduan;
	}

	public void setPanduan(String panduan) {
		this.panduan = panduan;
	}

	public String getKDate() {
		return this.KDate;
	}

	public void setKDate(String KDate) {
		this.KDate = KDate;
	}

}