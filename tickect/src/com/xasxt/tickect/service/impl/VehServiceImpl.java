package com.xasxt.tickect.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.xasxt.tickect.common.Constants;
import com.xasxt.tickect.dao.VehMapper;
import com.xasxt.tickect.service.VehService;
import com.xasxt.tickect.vo.VehInfo;

public class VehServiceImpl implements VehService {

	@Resource
	VehMapper vehMapper;
	
	/**
	 * 增加车辆信息
	 */
	@Override
	public boolean add(VehInfo vehInfo) {
		int count =this.vehMapper.add(vehInfo);
		return count>0;
		
	}

	/**
	 * 车辆列表
	 */
	@Override
	public List<VehInfo> getAllVel() {
		return this.vehMapper.getAllVel();
	}

	/**
	 * 模糊查询
	 */
	@Override
	public List<VehInfo> getVelsByNum(String vechNum) {
		return this.vehMapper.getVelsByNum(vechNum);
	}

	/**
	 * 准确查询
	 */
	@Override
	public VehInfo getVehByNum(String vechNum) {
		return this.vehMapper.getVehByNum(vechNum);
	}

	/**
	 * 更新
	 */
	@Override
	public boolean update(VehInfo vehInfo) {
		int count =this.vehMapper.update(vehInfo);
		return count>0;
	}

	/**
	 * 逻辑删除
	 */
	@Override
	public boolean delete(VehInfo vehInfo) {
		int count =this.vehMapper.delete(vehInfo);
		return count>0;
	}

	/**
	 * 获取页面总数
	 */
	@Override
	public int getPageCount() {
		//获取商品总数
		int counts=this.vehMapper.getCounts(); 
		return (counts+Constants.PAGE_SIZE-1)/Constants.PAGE_SIZE;
	}

	/**
	 * 分页查询
	 */
	@Override
	public List<VehInfo> getListByPage(int pageNum) {
		return this.vehMapper.getListByPage(pageNum,Constants.PAGE_SIZE);
	}
	
	

}
