package com.xasxt.tickect.service;

import java.util.List;

import com.xasxt.tickect.vo.RouteInfo;
import com.xasxt.tickect.vo.StationFeeInfo;

public interface RouteService {

	/**
	 * 获取路线列表
	 * @return
	 */
	List<RouteInfo> getList();

	/**
	 * 增加线路
	 * @param routeInfo
	 * @return
	 */
	boolean addRoute(RouteInfo routeInfo);

	/**
	 * 检查路线名是否合法
	 * @param routeName
	 * @return
	 */
	RouteInfo getInfoByName(String routeName);

	/**
	 *根据线路编号获取该线路的所有途径站点信息(包括顺序和票价已经行李费等，也包括起始站和终点站)
	 * @param routeId
	 * @return
	 */
	List<StationFeeInfo> getByWayList(String routeId);

}
