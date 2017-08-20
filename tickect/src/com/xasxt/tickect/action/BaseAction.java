package com.xasxt.tickect.action;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * @author ������
 *
 * @category BaseAction
 */
public class BaseAction extends ActionSupport {

	/**
	 * ����Ϣ���浽Session��
	 * 
	 * @param key
	 * @param value
	 */
	public void save2session(String key, Object value) {
		ActionContext.getContext().getSession().put(key, value);
	}

	/**
	 * ����Session
	 */
	public void clearSession() {
		ActionContext.getContext().getSession().clear();
	}
	/**
	 * ���ֵջ
	 * @param key
	 * @param value
	 */
	public void save2valueStack(String key, Object value) {
		ActionContext.getContext().getValueStack().set(key, value);
	}

}
