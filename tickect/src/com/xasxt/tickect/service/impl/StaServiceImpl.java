package com.xasxt.tickect.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.xasxt.tickect.dao.StaMapper;
import com.xasxt.tickect.service.StaService;
import com.xasxt.tickect.vo.StaInfo;

public class StaServiceImpl implements StaService {
	@Resource
	StaMapper staMapper;

	@Override
	public List<StaInfo> getAllStation() {
		return staMapper.getAllStation();
	}

	@Override
	public boolean add(StaInfo info) {
		return staMapper.add(info)>0;
	}

	@Override
	public StaInfo getStationInfoById(String stationId) {
		return staMapper.getStationInfoById(stationId);
	}

	@Override
	public StaInfo getStationInfoByName(String stationName) {
		return staMapper.getStationInfoByName(stationName);
	}

}
