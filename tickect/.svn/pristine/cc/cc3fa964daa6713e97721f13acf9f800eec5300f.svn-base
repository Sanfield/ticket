package com.xasxt.tickect.service;

import java.util.List;

import com.xasxt.tickect.vo.EmpInfo;

/**
 * @author 郭亚朋
 *
 * @category 员工模块业务逻辑层接口
 */
public interface EmpService {
	/**
	 * 登录
	 * 
	 * @param account
	 * @return 员工
	 */
	public EmpInfo login(String account);

	/**
	 * 添加员工
	 * 
	 * @param info
	 * @return
	 */
	public boolean add(EmpInfo info);

	/**
	 * 获取员工列表
	 * 
	 * @return 员工对象集合
	 */
	public List<EmpInfo> getAllEmpInfo();

	/**
	 * 条件查询员工
	 * 
	 * @param realName
	 * @param role
	 * @return 员工集合
	 */
	public List<EmpInfo> search(EmpInfo info);

	/**
	 * 删除员工
	 * 
	 * @param empId
	 * @return 是否成功删除
	 */
	public boolean delete(Integer empId);

	/**
	 * 分页查询
	 * 
	 * @param pageNow
	 * @param pageSize
	 * @return
	 */
	public List<EmpInfo> getAllEmpInfo2(int pageNow, int pageSize);

	/**
	 * 查询未被删除员工记录数
	 * @return
	 */
	public int getEmpRowCount();
}
