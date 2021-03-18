package com.hqgl.service.impl;

import com.hqgl.hib.dao.CarDao;
import com.hqgl.hib.po.Car;
import com.hqgl.service.CarService;

import java.util.List;

public class CarServiceImpl implements CarService {
	public CarDao cardao;
	
	//花车服务
	public CarDao getCardao() {
		return cardao;
	}

	public void setCardao(CarDao cardao) {
		this.cardao = cardao;
	}

	public List car(){
		return this.getCardao().car();
	}
	public List car_id(String id){
		return this.getCardao().car_id(id);
	}
	public boolean car_update(Car car){
		return this.getCardao().car_update(car);
	}
	public boolean car_delete(Car car){
		return this.getCardao().car_delete(car);
	}
	public boolean car_add(Car car){
		return this.getCardao().car_add(car);
	}
	public List ift(String id){
		return this.getCardao().ift(id);
	}
}
