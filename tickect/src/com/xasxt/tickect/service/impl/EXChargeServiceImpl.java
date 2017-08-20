package com.xasxt.tickect.service.impl;

import javax.annotation.Resource;

import com.xasxt.tickect.dao.EXChargeMapper;
import com.xasxt.tickect.service.EXChargeService;
import com.xasxt.tickect.vo.StaInfo;

public class EXChargeServiceImpl implements EXChargeService{

	@Resource
	EXChargeMapper eXChargeMapper;
	/**
	 * ����վ��ID��ȡ��������վ�ľ���
	 */
	@Override
	public StaInfo getDisById(String stationId) {
	
		return this.eXChargeMapper.getDisById(stationId);
	}
	
	
}
