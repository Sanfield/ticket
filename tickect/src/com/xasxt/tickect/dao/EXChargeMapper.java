package com.xasxt.tickect.dao;

import com.xasxt.tickect.vo.StaInfo;

public interface EXChargeMapper {

	/**
	 * ���ݳ�վId��ȡ������վ�ľ���
	 * @param stationId
	 * @return
	 */
	StaInfo getDisById(String stationId);

}
