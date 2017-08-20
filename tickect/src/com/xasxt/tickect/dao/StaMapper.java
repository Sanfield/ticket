package com.xasxt.tickect.dao;

import java.util.List;

import com.xasxt.tickect.vo.StaInfo;
import com.xasxt.tickect.vo.StationFeeInfo;

public interface StaMapper {

	/**
	 * 
	 * 获取站点列表
	 * 
	 * @return 站点集合
	 */
	List<StaInfo> getAllStation();

	/**
	 * 添加新站点
	 * 
	 * @return 影响行数
	 */
	int add(StaInfo info);

	/**
	 * 站点id检查
	 * 
	 * @return
	 */
	StaInfo getStationInfoById(String stationId);

	/**
	 *  站点名称检查
	 * @param stationName
	 * @return
	 */
	StaInfo getStationInfoByName(String stationName);

	/**
	 * 获取路线的起始点信息
	 * @param routeId
	 * @return
	 */
	List<StationFeeInfo> getStartTerminal(String routeId);

}
