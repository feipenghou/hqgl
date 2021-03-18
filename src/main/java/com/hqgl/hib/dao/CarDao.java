package com.hqgl.hib.dao;

import com.hqgl.hib.po.Car;

import java.util.List;

public interface CarDao {
	//花车服务
	public List car();
	public List car_id(String id);
	public boolean car_update(Car car);
	public boolean car_delete(Car car);
	public boolean car_add(Car car);
	public List ift(String id);
}
