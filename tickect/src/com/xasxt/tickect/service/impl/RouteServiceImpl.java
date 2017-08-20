package com.xasxt.tickect.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.xasxt.tickect.dao.RouteMapper;
import com.xasxt.tickect.dao.StaMapper;
import com.xasxt.tickect.service.RouteService;
import com.xasxt.tickect.vo.RouteInfo;
import com.xasxt.tickect.vo.StationFeeInfo;

public class RouteServiceImpl implements RouteService {

	@Resource
	private RouteMapper routeMapper;
	@Resource
	private StaMapper staMapper;
	/**
	 * ��ȡ·���б�
	 */
	@Override
	public List<RouteInfo> getList() {
		return this.routeMapper.getList();
	}
	/**
	 * ������·
	 */
	@Override
	public boolean addRoute(RouteInfo routeInfo) {
		int count = this.routeMapper.addRoute(routeInfo);
		return count>0;
	}
	/**
	 * ���·�����Ƿ����
	 */
	@Override
	public RouteInfo getInfoByName(String routeName) {
		// TODO Auto-generated method stub
		return this.routeMapper.getInfoByName(routeName);
	}
	/**
	 * ������·��Ż�ȡ����·������;��վ����Ϣ(����˳���Ʊ���Ѿ�����ѵȣ�Ҳ������ʼվ���յ�վ)
	 */
	@Override
	public List<StationFeeInfo> getByWayList(String routeId) {
		List<StationFeeInfo> list= staMapper.getStartTerminal(routeId);
		return list;
	}

	
	
	
}
