package com.xasxt.tickect.service.impl;

import java.util.List;

import javax.annotation.Resource;

import com.xasxt.tickect.dao.EmpMapper;
import com.xasxt.tickect.service.EmpService;
import com.xasxt.tickect.vo.EmpInfo;

/**
 * @author 郭亚朋
 *
 * @category 业务逻辑层实现类
 */
public class EmpServiceImpl implements EmpService {

	@Resource
	EmpMapper empMappeer;

	@Override
	public EmpInfo login(String account) {
		return empMappeer.login(account);
	}

	@Override
	public boolean add(EmpInfo info) {
		return empMappeer.add(info) > 0;
	}

	@Override
	public List<EmpInfo> getAllEmpInfo() {
		return empMappeer.getAllEmpInfo();
	}

	@Override
	public List<EmpInfo> search(EmpInfo info) {
		return empMappeer.search(info);
	}

	@Override
	public boolean delete(Integer empId) {
		return empMappeer.delete(empId) > 0;
	}

	@Override
	public List<EmpInfo> getAllEmpInfo2(int pageNow, int pageSize) {
		return empMappeer.getAllEmpInfo2(pageNow, pageSize);
	}

	@Override
	public int getEmpRowCount() {
		return empMappeer.getEmpRowCount();
	}

}
