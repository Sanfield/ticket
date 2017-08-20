package com.xasxt.tickect.service;

import java.util.List;

import com.xasxt.tickect.vo.StaInfo;

public interface StaService {

	/**
	 * ��ȡվ���б�
	 * @return
	 */
	List<StaInfo> getAllStation();

	/**
	 * ���վ��
	 * @param info
	 * @return
	 */
	boolean add(StaInfo info);

	/**
	 * վ���ʺż��
	 * @return
	 */
	StaInfo getStationInfoById(String stationId);

	/**
	 * վ�����Ƽ��
	 * @param stationName
	 * @return
	 */
	StaInfo getStationInfoByName(String stationName);

}
