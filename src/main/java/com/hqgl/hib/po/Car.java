package com.hqgl.hib.po;

import java.util.Date;



public class Car implements java.io.Serializable {

	// Fields

	private String id;
	private String pingpai;
	private String style;
	private String price;
	private String color;
	private Integer count;
	private String people;
	private String baoxian;
	private String weizhang;
	private String youhao;
	private String jing;
	private String shangbiao;
	private String shache;
	private String jiasu;
	private String panduan;
	private String beizhu;
	private Date shop;
	private String image;
	private String jibie;
	private String shuxing;
	private String zhuangtai;
	private String carid;

	// Constructors

	/** default constructor */
	public Car() {
	}

	/** minimal constructor */
	public Car(String id, String zhuangtai, String carid) {
		this.id = id;
		this.zhuangtai = zhuangtai;
		this.carid = carid;
	}

	/** full constructor */
	public Car(String id, String pingpai, String style, String price,
			String color, Integer count, String people, String baoxian,
			String weizhang, String youhao, String jing, String shangbiao,
			String shache, String jiasu, String panduan, String beizhu,
			Date shop, String image, String jibie, String shuxing,
			String zhuangtai, String carid) {
		this.id = id;
		this.pingpai = pingpai;
		this.style = style;
		this.price = price;
		this.color = color;
		this.count = count;
		this.people = people;
		this.baoxian = baoxian;
		this.weizhang = weizhang;
		this.youhao = youhao;
		this.jing = jing;
		this.shangbiao = shangbiao;
		this.shache = shache;
		this.jiasu = jiasu;
		this.panduan = panduan;
		this.beizhu = beizhu;
		this.shop = shop;
		this.image = image;
		this.jibie = jibie;
		this.shuxing = shuxing;
		this.zhuangtai = zhuangtai;
		this.carid = carid;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPingpai() {
		return this.pingpai;
	}

	public void setPingpai(String pingpai) {
		this.pingpai = pingpai;
	}

	public String getStyle() {
		return this.style;
	}

	public void setStyle(String style) {
		this.style = style;
	}

	public String getPrice() {
		return this.price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getColor() {
		return this.color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public Integer getCount() {
		return this.count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public String getPeople() {
		return this.people;
	}

	public void setPeople(String people) {
		this.people = people;
	}

	public String getBaoxian() {
		return this.baoxian;
	}

	public void setBaoxian(String baoxian) {
		this.baoxian = baoxian;
	}

	public String getWeizhang() {
		return this.weizhang;
	}

	public void setWeizhang(String weizhang) {
		this.weizhang = weizhang;
	}

	public String getYouhao() {
		return this.youhao;
	}

	public void setYouhao(String youhao) {
		this.youhao = youhao;
	}

	public String getJing() {
		return this.jing;
	}

	public void setJing(String jing) {
		this.jing = jing;
	}

	public String getShangbiao() {
		return this.shangbiao;
	}

	public void setShangbiao(String shangbiao) {
		this.shangbiao = shangbiao;
	}

	public String getShache() {
		return this.shache;
	}

	public void setShache(String shache) {
		this.shache = shache;
	}

	public String getJiasu() {
		return this.jiasu;
	}

	public void setJiasu(String jiasu) {
		this.jiasu = jiasu;
	}

	public String getPanduan() {
		return this.panduan;
	}

	public void setPanduan(String panduan) {
		this.panduan = panduan;
	}

	public String getBeizhu() {
		return this.beizhu;
	}

	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}

	public Date getShop() {
		return this.shop;
	}

	public void setShop(Date shop) {
		this.shop = shop;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getJibie() {
		return this.jibie;
	}

	public void setJibie(String jibie) {
		this.jibie = jibie;
	}

	public String getShuxing() {
		return this.shuxing;
	}

	public void setShuxing(String shuxing) {
		this.shuxing = shuxing;
	}

	public String getZhuangtai() {
		return this.zhuangtai;
	}

	public void setZhuangtai(String zhuangtai) {
		this.zhuangtai = zhuangtai;
	}

	public String getCarid() {
		return this.carid;
	}

	public void setCarid(String carid) {
		this.carid = carid;
	}

}