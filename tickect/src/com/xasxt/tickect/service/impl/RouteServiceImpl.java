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
	 * 获取路线列表
	 */
	@Override
	public List<RouteInfo> getList() {
		return this.routeMapper.getList();
	}
	/**
	 * 增加线路
	 */
	@Override
	public boolean addRoute(RouteInfo routeInfo) {
		int count = this.routeMapper.addRoute(routeInfo);
		return count>0;
	}
	/**
	 * 检查路线名是否存在
	 */
	@Override
	public RouteInfo getInfoByName(String routeName) {
		// TODO Auto-generated method stub
		return this.routeMapper.getInfoByName(routeName);
	}
	/**
	 * 根据线路编号获取该线路的所有途径站点信息(包括顺序和票价已经行李费等，也包括起始站和终点站)
	 */
	@Override
	public List<StationFeeInfo> getByWayList(String routeId) {
		List<StationFeeInfo> list= staMapper.getStartTerminal(routeId);
		return list;
	}

	
	
	
}
