package com.xasxt.tickect.dao;

import java.util.List;

import com.xasxt.tickect.vo.RouteInfo;

public interface RouteMapper {

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
	int addRoute(RouteInfo routeInfo);

	/**
	 * 通过路线名查找路线信息
	 * @param routeName
	 * @return
	 */
	RouteInfo getInfoByName(String routeName);

}
