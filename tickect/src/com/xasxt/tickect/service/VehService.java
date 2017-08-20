package com.xasxt.tickect.service;

import java.util.List;

import com.xasxt.tickect.vo.VehInfo;

/**
 * @author sangei
 *	2017-08-15 15:11:29
 *	@category 车辆业务层
 */
public interface VehService {

	/**
	 * 添加车辆
	 * @param vehInfo
	 * @return
	 */
	boolean add(VehInfo vehInfo);

	/**
	 * 获取车辆列表
	 * @return
	 */
	List<VehInfo> getAllVel();

	/**
	 * 根据车牌号获取车辆列表
	 * @param vechNum
	 * @return
	 */
	List<VehInfo> getVelsByNum(String vechNum);

	/**
	 * 根据车牌号获取车辆
	 * @param vechNum
	 * @return
	 */
	VehInfo getVehByNum(String vechNum);

	/**
	 * 根据车牌号修改车辆信息
	 * @param vehInfo
	 * @return
	 */
	boolean update(VehInfo vehInfo);

	/**
	 * 删除车辆信息
	 * @param vehInfo
	 * @return
	 */
	boolean delete(VehInfo vehInfo);

	/**
	 * 获取页面总数
	 * @return
	 */
	int getPageCount();

	/**
	 * 分页查询
	 * @param pageNum
	 * @return
	 */
	List<VehInfo> getListByPage(int pageNum);

}
