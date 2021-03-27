package com.hqgl.hib.po;


public class Notice implements java.io.Serializable {

	// Fields

	private String id;
	private String title;
	private String qtime;
	private String jtime;
	private String content;
	private String panduan;
	private String type;
	private String name;
	// Constructors

	/** default constructor */
	public Notice() {
	}

	/** minimal constructor */
	public Notice(String id, String title, String name) {
		this.id = id;
		this.title = title;
		this.name = name;
	}

	/** full constructor */
	public Notice(String id, String title, String qtime, String jtime,
			String content, String panduan, String type, String name) {
		this.id = id;
		this.title = title;
		this.qtime = qtime;
		this.jtime = jtime;
		this.content = content;
		this.panduan = panduan;
		this.type = type;
		this.name = name;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getQtime() {
		return this.qtime;
	}

	public void setQtime(String qtime) {
		this.qtime = qtime;
	}

	public String getJtime() {
		return this.jtime;
	}

	public void setJtime(String jtime) {
		this.jtime = jtime;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPanduan() {
		return this.panduan;
	}

	public void setPanduan(String panduan) {
		this.panduan = panduan;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}