package com.xasxt.tickect.action;

import java.util.List;

import javax.annotation.Resource;

import com.xasxt.tickect.service.StaService;
import com.xasxt.tickect.vo.AjaxResp;
import com.xasxt.tickect.vo.StaInfo;

public class StaAction extends BaseAction {
	@Resource
	StaService staService;
	StaInfo info;

	public StaInfo getInfo() {
		return info;
	}

	public void setInfo(StaInfo info) {
		this.info = info;
	}

	/**
	 * 站点列表
	 * 
	 * @return 站点集合
	 */
	public String list() {
		List<StaInfo> list = staService.getAllStation();
		super.save2valueStack("staList", list);
		super.save2valueStack("result", list);
		return SUCCESS;
	}

	/**
	 * 添加站点
	 * 
	 * @return
	 */
	public String add() {
		boolean flag = staService.add(info);
		if (flag) {
			super.addActionMessage("添加成功!");
		}
		return SUCCESS;
	}

	/**
	 * 异步检查站点ID
	 * 
	 * @return
	 */
	public String checkStationId() {
		AjaxResp resp = new AjaxResp();
		if (info.getStationId() != null) {
			try {
				StaInfo sta = staService.getStationInfoById(info.getStationId());
				if (sta != null) {
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

	/**
	 * 异步检查站点名称
	 * 
	 * @return
	 */
	public String checkStationName() {
		AjaxResp resp = new AjaxResp();
		if (info.getStationName() != null) {
			try {
				StaInfo sta = staService.getStationInfoByName(info.getStationName());
				if (sta != null) {
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

	/**
	 * 查询站点
	 * 
	 * @return
	 */
	public String getInfoByName() {

		StaInfo sta = staService.getStationInfoByName(info.getStationName());
		if (sta != null) {
			super.save2valueStack("sta", sta);
		} else {
			addActionMessage("站点不存在");
		}
		return SUCCESS;
	}
}
