package com.hqgl.service;

import com.hqgl.hib.po.Car;

import java.util.List;

public interface CarService {
	//��������
	public List car();
	public List car_id(String id);
	public boolean car_update(Car car);
	public boolean car_delete(Car car);
	public boolean car_add(Car car);
}
