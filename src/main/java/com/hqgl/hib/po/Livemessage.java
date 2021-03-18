package com.hqgl.hib.po;

import java.util.Date;



public class Livemessage implements java.io.Serializable {

	// Fields

	private String id;
	private String livep;
	private String liveh;
	private String livecon;
	private String livezhu;
	private String livere;
	private String panduan;
	private String recon;
	private Date livetime;
	private Date retime;

	// Constructors

	/** default constructor */
	public Livemessage() {
	}

	/** minimal constructor */
	public Livemessage(String id, String livezhu, String panduan) {
		this.id = id;
		this.livezhu = livezhu;
		this.panduan = panduan;
	}

	/** full constructor */
	public Livemessage(String id, String livep, String liveh, String livecon,
			String livezhu, String livere, String panduan, String recon,
			Date livetime, Date retime) {
		this.id = id;
		this.livep = livep;
		this.liveh = liveh;
		this.livecon = livecon;
		this.livezhu = livezhu;
		this.livere = livere;
		this.panduan = panduan;
		this.recon = recon;
		this.livetime = livetime;
		this.retime = retime;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLivep() {
		return this.livep;
	}

	public void setLivep(String livep) {
		this.livep = livep;
	}

	public String getLiveh() {
		return this.liveh;
	}

	public void setLiveh(String liveh) {
		this.liveh = liveh;
	}

	public String getLivecon() {
		return this.livecon;
	}

	public void setLivecon(String livecon) {
		this.livecon = livecon;
	}

	public String getLivezhu() {
		return this.livezhu;
	}

	public void setLivezhu(String livezhu) {
		this.livezhu = livezhu;
	}

	public String getLivere() {
		return this.livere;
	}

	public void setLivere(String livere) {
		this.livere = livere;
	}

	public String getPanduan() {
		return this.panduan;
	}

	public void setPanduan(String panduan) {
		this.panduan = panduan;
	}

	public String getRecon() {
		return this.recon;
	}

	public void setRecon(String recon) {
		this.recon = recon;
	}

	public Date getLivetime() {
		return this.livetime;
	}

	public void setLivetime(Date livetime) {
		this.livetime = livetime;
	}

	public Date getRetime() {
		return this.retime;
	}

	public void setRetime(Date retime) {
		this.retime = retime;
	}

}