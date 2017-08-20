package com.xasxt.tickect.dao;

import java.util.List;

import com.xasxt.tickect.vo.EmpInfo;

/**
 * @author 郭亚朋
 *
 * @category 数据访问层接口
 */
public interface EmpMapper {

	/**
	 * 登录
	 * 
	 * @param account
	 * @return 员工对象
	 */
	public EmpInfo login(String account);

	/**
	 * 添加员工
	 * 
	 * @param info
	 * @return
	 */
	public int add(EmpInfo info);

	/**
	 * 获取员工列表
	 * 
	 * @return 员工集合
	 */
	public List<EmpInfo> getAllEmpInfo();

	/**
	 * 条件查询员工
	 * 
	 * @return 员工集合
	 */
	public List<EmpInfo> search(EmpInfo info);

	/**
	 * 删除员工
	 * 
	 * @param empId
	 * @return 受影响的行数
	 */
	public int delete(Integer empId);

	/**
	 * 分页查询
	 * 
	 * @param pageNow
	 * @param pageSize
	 * @return
	 */
	public List<EmpInfo> getAllEmpInfo2(int pageNow, int pageSize);

	/**
	 * 查询在职员工记录数
	 * 
	 * @return 员工人数
	 */
	public int getEmpRowCount();

}
