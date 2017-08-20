package com.xasxt.tickect.service;

import java.util.List;

import com.xasxt.tickect.vo.EmpInfo;

/**
 * @author ������
 *
 * @category Ա��ģ��ҵ���߼���ӿ�
 */
public interface EmpService {
	/**
	 * ��¼
	 * 
	 * @param account
	 * @return Ա��
	 */
	public EmpInfo login(String account);

	/**
	 * ���Ա��
	 * 
	 * @param info
	 * @return
	 */
	public boolean add(EmpInfo info);

	/**
	 * ��ȡԱ���б�
	 * 
	 * @return Ա�����󼯺�
	 */
	public List<EmpInfo> getAllEmpInfo();

	/**
	 * ������ѯԱ��
	 * 
	 * @param realName
	 * @param role
	 * @return Ա������
	 */
	public List<EmpInfo> search(EmpInfo info);

	/**
	 * ɾ��Ա��
	 * 
	 * @param empId
	 * @return �Ƿ�ɹ�ɾ��
	 */
	public boolean delete(Integer empId);

	/**
	 * ��ҳ��ѯ
	 * 
	 * @param pageNow
	 * @param pageSize
	 * @return
	 */
	public List<EmpInfo> getAllEmpInfo2(int pageNow, int pageSize);

	/**
	 * ��ѯδ��ɾ��Ա����¼��
	 * @return
	 */
	public int getEmpRowCount();
}
