package com.xasxt.tickect.service.impl;

import javax.annotation.Resource;

import com.xasxt.tickect.dao.EXChargeMapper;
import com.xasxt.tickect.service.EXChargeService;
import com.xasxt.tickect.vo.StaInfo;

public class EXChargeServiceImpl implements EXChargeService{

	@Resource
	EXChargeMapper eXChargeMapper;
	/**
	 * 根据站在ID获取距离西安站的距离
	 */
	@Override
	public StaInfo getDisById(String stationId) {
	
		return this.eXChargeMapper.getDisById(stationId);
	}
	
	
}
