package com.xasxt.tickect.action;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author 郭亚朋
 *
 * @category BaseAction
 */
public class BaseAction extends ActionSupport {

	/**
	 * 将信息保存到Session中
	 * 
	 * @param key
	 * @param value
	 */
	public void save2session(String key, Object value) {
		ActionContext.getContext().getSession().put(key, value);
	}

	/**
	 * 清理Session
	 */
	public void clearSession() {
		ActionContext.getContext().getSession().clear();
	}
	/**
	 * 获得值栈
	 * @param key
	 * @param value
	 */
	public void save2valueStack(String key, Object value) {
		ActionContext.getContext().getValueStack().set(key, value);
	}

}
