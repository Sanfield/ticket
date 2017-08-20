package com.xasxt.tickect.dao;

import java.util.List;

import com.xasxt.tickect.vo.VehInfo;

public interface VehMapper {

	/**
	 * 增加车辆
	 * @param vehInfo
	 * @return int
	 */
	int add(VehInfo vehInfo);

	/**
	 * 获取车辆列表
	 * @return List<VehInfo>
	 */
	List<VehInfo> getAllVel();

	/**
	 * 根据车牌号获取车辆列表（模糊查询）
	 * @param vechNum
	 * @return List<VehInfo>
	 */
	List<VehInfo> getVelsByNum(String vechNum);

	/**
	 * 根据车牌号获取车辆（准确查询）
	 * @param vechNum
	 * @return
	 */
	VehInfo getVehByNum(String vechNum);

	/**
	 * 根据车牌号更改车辆信息
	 * @param vehInfo
	 * @return
	 */
	int update(VehInfo vehInfo);

	/**
	 * 逻辑删除
	 * @param vehInfo
	 * @return
	 */
	int delete(VehInfo vehInfo);

	/**
	 * 获取商品总数
	 * @return
	 */
	int getCounts();

	/**
	 * 分页查询
	 * @param pageNum
	 * @return
	 */
	List<VehInfo> getListByPage(int pageNum, int pageSize);

}
