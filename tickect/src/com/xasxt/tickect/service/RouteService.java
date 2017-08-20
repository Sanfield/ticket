package com.xasxt.tickect.service;

import java.util.List;

import com.xasxt.tickect.vo.RouteInfo;
import com.xasxt.tickect.vo.StationFeeInfo;

public interface RouteService {

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
	boolean addRoute(RouteInfo routeInfo);

	/**
	 * ���·�����Ƿ�Ϸ�
	 * @param routeName
	 * @return
	 */
	RouteInfo getInfoByName(String routeName);

	/**
	 *������·��Ż�ȡ����·������;��վ����Ϣ(����˳���Ʊ���Ѿ�����ѵȣ�Ҳ������ʼվ���յ�վ)
	 * @param routeId
	 * @return
	 */
	List<StationFeeInfo> getByWayList(String routeId);

}
