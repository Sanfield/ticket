package com.xasxt.tickect.action;

import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.json.annotations.JSON;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xasxt.tickect.service.VehService;
import com.xasxt.tickect.vo.AjaxResp;
import com.xasxt.tickect.vo.VehInfo;



/**
 * @author sangfei
 * 	2017-08-15 14:59:43
 *	@category 车辆的action
 */
/**
 * @author Administrator
 *
 */
public class VehAction extends BaseAction {
	

	private VehInfo vehInfo;
	
	public VehInfo getVehInfo() {
		return vehInfo;
	}
	public void setVehInfo(VehInfo vehInfo) {
		this.vehInfo = vehInfo;
	}
	@Resource
	private VehService vehService;
	/**
	 * 添加车辆
	 * @return String
	 */
	public String add(){
		if(vehInfo!=null){
		//	System.out.println(this.vehInfo.getVechNum());
			boolean result=this.vehService.add(vehInfo);
			if(result==true)
				return SUCCESS;
			else 
				return "false";
		}
		return "false";
	}
	/**
	 * 获取列表
	 * @return
	 */
	public String list(){
	//	List<VehInfo> list= vehService.getAllVel();
		int pageNum=1;
		String pageNo=ServletActionContext.getRequest().getParameter("pageNo");
		if(pageNo !=null){
			pageNum=Integer.valueOf(pageNo);
			String dir=ServletActionContext.getRequest().getParameter("dir");
			System.out.println("返回的dir"+dir);
			if("pre".equals(dir)){
				pageNum--;
			}else if("next".equals(dir)){
				pageNum++;
			}
		}
		//获取页面数
		int count=this.vehService.getPageCount();
		//分页查询
		ActionContext.getContext().getValueStack().set("pageNum", pageNum);
		ActionContext.getContext().getValueStack().set("pageCount", count);
		List<VehInfo> list= this.vehService.getListByPage(pageNum);
		if(list !=null){
			ActionContext.getContext().getValueStack().set("vehlist", list);
			return SUCCESS;
		}
		addActionError("获取列表失败请重试");
		return "false";
	}
	/**
	 * 根据车牌号模糊查询
	 * @return
	 */
	public String search(){
		List<VehInfo> list= vehService.getVelsByNum(vehInfo.getVechNum());
		if(list!=null){
			ActionContext.getContext().getValueStack().set("vehlist", list);
			return SUCCESS;
		}else{
			addActionError("无搜索结果");
			return "input";
		}
	}
	/**
	 * 根据车牌号获取车辆信息
	 * @return
	 */
	public String getVehByNum(){
		AjaxResp resp= new AjaxResp();
		if(this.vehInfo.getVechNum()==null||this.vehInfo==null){
			resp.setCode(-2);
			resp.setMessage("未提供有效参数!");
		}else{
			try{
			VehInfo info= this.vehService.getVehByNum(this.vehInfo.getVechNum());
			if(info!=null){
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
	 * 编辑信息
	 * @return
	 */
	public String edit(){
		VehInfo info= this.vehService.getVehByNum(this.vehInfo.getVechNum());
		super.save2valueStack("info", info);
		return SUCCESS;
	}
	/**
	 * 更新汽车信息
	 * @return
	 */
	public String update(){
		if(vehInfo!=null){
			boolean result= this.vehService.update(vehInfo);
			if(result){
				addActionMessage("修改成功");
			
			}else{
				addActionMessage("修改失败");
			}
			
		}
		return SUCCESS;
	}
	public String delete(){
		if(vehInfo!=null){
			boolean result=this.vehService.delete(vehInfo);
			if(result){
				addActionMessage("修改成功");
				
			}else{
				addActionMessage("修改失败");
			}
		}
		return SUCCESS;
	}
}
