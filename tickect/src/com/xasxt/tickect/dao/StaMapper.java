package com.xasxt.tickect.dao;

import java.util.List;

import com.xasxt.tickect.vo.StaInfo;
import com.xasxt.tickect.vo.StationFeeInfo;

public interface StaMapper {

	/**
	 * 
	 * ��ȡվ���б�
	 * 
	 * @return վ�㼯��
	 */
	List<StaInfo> getAllStation();

	/**
	 * �����վ��
	 * 
	 * @return Ӱ������
	 */
	int add(StaInfo info);

	/**
	 * վ��id���
	 * 
	 * @return
	 */
	StaInfo getStationInfoById(String stationId);

	/**
	 *  վ�����Ƽ��
	 * @param stationName
	 * @return
	 */
	StaInfo getStationInfoByName(String stationName);

	/**
	 * ��ȡ·�ߵ���ʼ����Ϣ
	 * @param routeId
	 * @return
	 */
	List<StationFeeInfo> getStartTerminal(String routeId);

}
