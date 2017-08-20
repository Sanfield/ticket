package com.xasxt.tickect.dao;

import com.xasxt.tickect.vo.StaInfo;

public interface EXChargeMapper {

	/**
	 * 根据车站Id获取与西安站的距离
	 * @param stationId
	 * @return
	 */
	StaInfo getDisById(String stationId);

}
