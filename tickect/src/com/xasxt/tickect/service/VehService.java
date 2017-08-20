package com.xasxt.tickect.service;

import java.util.List;

import com.xasxt.tickect.vo.VehInfo;

/**
 * @author sangei
 *	2017-08-15 15:11:29
 *	@category ����ҵ���
 */
public interface VehService {

	/**
	 * ��ӳ���
	 * @param vehInfo
	 * @return
	 */
	boolean add(VehInfo vehInfo);

	/**
	 * ��ȡ�����б�
	 * @return
	 */
	List<VehInfo> getAllVel();

	/**
	 * ���ݳ��ƺŻ�ȡ�����б�
	 * @param vechNum
	 * @return
	 */
	List<VehInfo> getVelsByNum(String vechNum);

	/**
	 * ���ݳ��ƺŻ�ȡ����
	 * @param vechNum
	 * @return
	 */
	VehInfo getVehByNum(String vechNum);

	/**
	 * ���ݳ��ƺ��޸ĳ�����Ϣ
	 * @param vehInfo
	 * @return
	 */
	boolean update(VehInfo vehInfo);

	/**
	 * ɾ��������Ϣ
	 * @param vehInfo
	 * @return
	 */
	boolean delete(VehInfo vehInfo);

	/**
	 * ��ȡҳ������
	 * @return
	 */
	int getPageCount();

	/**
	 * ��ҳ��ѯ
	 * @param pageNum
	 * @return
	 */
	List<VehInfo> getListByPage(int pageNum);

}
