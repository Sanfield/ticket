package com.xasxt.tickect.dao;

import java.util.List;

import com.xasxt.tickect.vo.RouteInfo;

public interface RouteMapper {

	/**
	 * ��ȡ·���б�
	 * @return
	 */
	List<RouteInfo> getList();

	/**
	 * ������·
	 * @param routeInfo
	 * @return
	 */
	int addRoute(RouteInfo routeInfo);

	/**
	 * ͨ��·��������·����Ϣ
	 * @param routeName
	 * @return
	 */
	RouteInfo getInfoByName(String routeName);

}
