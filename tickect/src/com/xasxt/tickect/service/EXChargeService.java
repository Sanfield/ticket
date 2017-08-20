package com.xasxt.tickect.service;

import com.xasxt.tickect.vo.StaInfo;

public interface EXChargeService {

	/**
	 * 根据车站ID获取距离
	 * @param stationId
	 * @return
	 */
	StaInfo getDisById(String stationId);

}
