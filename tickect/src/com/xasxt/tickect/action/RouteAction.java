package com.xasxt.tickect.action;

import java.util.List;

import javax.annotation.Resource;

import org.apache.log4j.Logger;

import com.xasxt.tickect.service.RouteService;
import com.xasxt.tickect.vo.AjaxResp;
import com.xasxt.tickect.vo.RouteInfo;
import com.xasxt.tickect.vo.StationFeeInfo;

public class RouteAction extends BaseAction {
	private static final Logger logger = Logger.getLogger(RouteAction.class);
	@Resource
	private RouteService routeService;
	
	 RouteInfo routeInfo;
	
	public RouteInfo getRouteInfo() {
		return routeInfo;
	}

	public void setRouteInfo(RouteInfo routeInfo) {
		this.routeInfo = routeInfo;
	}

	/**
	 * 获取线路列表
	 * @return
	 */
	public String list(){
		
		List<RouteInfo> list= this.routeService.getList();
		super.save2valueStack("list", list);
		return SUCCESS;
	}
	
	/**
	 * 检查路线名是否合法
	 * @return
	 */
	public String checkRoute(){
		AjaxResp resp= new AjaxResp();
		if(routeInfo.getRouteName()==null||routeInfo.getRouteName().length()==0){
			resp.setCode(-2);
			resp.setMessage("未提供有效参数!");
		}else{
			try{
				RouteInfo Info=this.routeService.getInfoByName(routeInfo.getRouteName());
				if(Info!=null){
					resp.setResult(false);
				}else{
					resp.setResult(true);
				}
			}catch(Exception e){
				resp.setCode(-99);
				resp.setMessage(e.getMessage());
			}
		}
		super.save2valueStack("result", resp);
		return SUCCESS;
	}
	/**
	 * 添加路线
	 * @return
	 */
	public String addRoute(){
		System.out.println("参数:"+routeInfo.getRouteName()+","+routeInfo.getStartStation()+","+routeInfo.getTerminalStation()+","
				+routeInfo.getBaggaceFee()+","+routeInfo.getPrice());
		if(routeInfo!=null){
			boolean result=this.routeService.addRoute(routeInfo);
			if(result)
			return SUCCESS;
			else{
				addActionMessage("请重新录入");
				return "false";
			}
		}else{
			addActionError("数据异常");
			return "false";
		}
	}
	/**
	 * 获取线路途径站点列表
	 * 
	 * @return
	 */
	public String ajaxByWayList() {
	//	System.out.println("ajax的："+this.routeInfo.getRouteId());
		AjaxResp resp = new AjaxResp();
		if (this.routeInfo == null || this.routeInfo.getRouteId() == null) {
			resp.setCode(-2);
			resp.setMessage("未提交有效的参数!");
		} else {
			try {
				List<StationFeeInfo> statList = routeService.getByWayList(this.routeInfo.getRouteId());
				resp.setResult(statList);
			} catch (Exception e) {
				logger.error(e.getMessage());
				resp.setCode(-99);
				resp.setMessage(e.getMessage());
			}
		}
	
		super.save2valueStack("result", resp);
		return SUCCESS;
	}
	
}
