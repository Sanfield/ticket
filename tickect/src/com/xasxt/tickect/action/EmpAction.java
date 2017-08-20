package com.xasxt.tickect.action;

import java.util.List;

import javax.annotation.Resource;

import com.opensymphony.xwork2.ActionContext;
import com.xasxt.tickect.common.Constants;
import com.xasxt.tickect.service.EmpService;
import com.xasxt.tickect.vo.AjaxResp;
import com.xasxt.tickect.vo.EmpInfo;

/**
 * @author 郭亚朋
 *
 * @category 员工管理模块Action
 */
public class EmpAction extends BaseAction {

	@Resource
	EmpService empService;

	EmpInfo info;
	private int pageNow;

	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public EmpInfo getInfo() {
		return info;
	}

	public void setInfo(EmpInfo info) {
		this.info = info;
	}

	/**
	 * 登录
	 * 
	 * @return 常量标志
	 */
	public String login() {
		EmpInfo empInfo = empService.login(info.getAccount());
		if (empInfo == null) {
			addActionError("用户名无效!");
			return LOGIN;
		}
		if (empInfo.getPwd().equals(info.getPwd())) {
			super.save2session("empInfo", empInfo);
			return SUCCESS;
		}
		addActionError("密码错误!");
		return LOGIN;
	}

	/**
	 * 退出登录
	 * 
	 * @return
	 */
	public String logOut() {
		super.clearSession();
		return SUCCESS;
	}

	/**
	 * 添加员工
	 * 
	 * @return
	 */
	public String add() {
		boolean flag = empService.add(info);
		if (flag) {
			addActionMessage("添加成功!");
			return SUCCESS;
		}
		return "add";
	}

	/**
	 * 员工列表
	 * 
	 * @return 员工集合
	 */
	public String list() {
		List<EmpInfo> list = empService.getAllEmpInfo();

		if (list != null) {
			ActionContext.getContext().getValueStack().set("empList", list);
			return SUCCESS;
		}
		return "list";
	}

	/**
	 * 员工列表分页查询
	 * 
	 * @return 员工集合
	 */
	public String list2() {
		int pageNow = this.pageNow == 0 ? 1 : this.pageNow;
		int pageSize = Constants.PAGE_SIZE;
		int rowCount = empService.getEmpRowCount();
		int pageCount = rowCount % pageSize == 0 ? (rowCount / pageSize) : (rowCount / pageSize + 1);
		List<EmpInfo> list = empService.getAllEmpInfo2(pageNow, pageSize);
		if (list != null) {
			super.save2valueStack("pageNow", pageNow);
			super.save2valueStack("pageCount", pageCount);
			super.save2valueStack("empList", list);
			return SUCCESS;
		}
		return "list";
	}

	/**
	 * 条件查询
	 * 
	 * @return 员工对象集合
	 */
	public String search() {
		List<EmpInfo> list = empService.search(info);
		if (list != null) {
			ActionContext.getContext().getValueStack().set("empList", list);
			return SUCCESS;
		}
		return SUCCESS;
	}

	/**
	 * 删除员工
	 */
	public String delete() {
		boolean flag = empService.delete(info.getEmpId());
		if (flag) {
			return SUCCESS;
		}
		return SUCCESS;
	}

	/**
	 * 检查帐号
	 * 
	 * @return
	 */
	public String ajaxCheckAcount() {
		AjaxResp resp = new AjaxResp();
		if (info.getAccount() != null) {
			try {
				EmpInfo emp = this.empService.login(info.getAccount());
				if (emp != null) {
					resp.setResult(false);
				} else {
					resp.setResult(true);
				}
			} catch (Exception e) {
				resp.setCode(-99);
				resp.setMessage(e.getMessage());
			}
		} else {
			resp.setCode(-2);
			resp.setMessage("未提供有效参数!");
		}
		super.save2valueStack("result", resp);
		return SUCCESS;
	}
}
