package com.hqgl.service.impl;
import com.hqgl.hib.dao.ptDao;
import com.hqgl.hib.po.Dingdan;
import com.hqgl.hib.po.Kehu;
import com.hqgl.service.ptService;

import java.util.List;

public class ptServiceImpl implements ptService {
	private ptDao ptdao;
	public ptDao getPtdao() {
	return ptdao;
}
	public void setPtdao(ptDao ptdao) {
		this.ptdao = ptdao;
	}
	//根据ID查看一条信息
	public List pt_id(String id){
	return this.getPtdao().pt_id(id);
}
	public List gg() {
		return this.getPtdao().gg();
	}
	//根据id查看一条公告
	public List ptnotice_id(String id){
		return this.getPtdao().ptnotice_id(id);
	}
	//查看全部礼服
	public List ptfuzhuang_display(){
		return this.getPtdao().ptfuzhuang_display();
	}
	//根据id查看一条礼服信息
	public List ptfuzhuang_id(String id){
		return this.getPtdao().ptfuzhuang_id(id);
	}
	//花车服务
	public List ptcar(){
		return this.getPtdao().ptcar();
	}
	public List ptcar_id(String id){
		return this.getPtdao().ptcar_id(id);
	}
	/*添加客户信息*/
    public List ptaddkehuid(){
    	return this.getPtdao().ptaddkehuid();
    }
    public boolean ptaddkehu(Kehu kehu){
    	return this.getPtdao().ptaddkehu(kehu);
    }
	//添加订单
    public List pttianjiadingdan(){
    	return this.getPtdao().pttianjiadingdan();
    }
    public boolean pttianjia(Dingdan dingdan){
    	return this.getPtdao().pttianjia(dingdan);
    	
    }
}
