package com.hqgl.hib.dao;
import com.hqgl.hib.po.Dingdan;
import com.hqgl.hib.po.Kehu;

import java.util.List;

public interface ptDao {
	//根据ID查看一条信息
	public List pt_id(String id);
	//查看全部公告
	public List gg();
	//根据id查看一条公告
	public List ptnotice_id(String id);
	//查看全部礼服
	public List ptfuzhuang_display();
	//根据id查看一条礼服信息
	public List ptfuzhuang_id(String id);
	//花车服务
	public List ptcar();
	public List ptcar_id(String id);
	//添加订单
	//添加客户信息
    public List ptaddkehuid();
    public boolean ptaddkehu(Kehu kehu);
    public List pttianjiadingdan();
    public boolean pttianjia(Dingdan dingdan);
}
