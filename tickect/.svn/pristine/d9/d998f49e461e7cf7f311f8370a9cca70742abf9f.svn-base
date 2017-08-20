package com.xasxt.tickect.action;

import javax.annotation.Resource;

import com.xasxt.tickect.service.EXChargeService;
import com.xasxt.tickect.service.StaService;
import com.xasxt.tickect.vo.StaInfo;

public class EXChargeAction extends BaseAction {
	
	private StaInfo staInfo;

	public void setStaInfo(StaInfo staInfo) {
		this.staInfo = staInfo;
	}
	@Resource
	StaService staService;
	
	public String getCharge(){
		if(staInfo!=null){
			String id=staInfo.getStationId();
			System.out.println(id);
			StaInfo info=staService.getStationInfoById(id);
		//	System.out.println("æ‡¿Î:"+info);
			double charge= Math.round(info.getDistance()*(-0.016))+3;
			super.save2valueStack("result", charge);
		}
		return SUCCESS;
	}

}
