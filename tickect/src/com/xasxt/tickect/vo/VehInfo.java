package com.xasxt.tickect.vo;

import java.sql.Date;


/**
 * @author sangfei
 * 2017-08-15 15:00:11
 * @category 车辆实体类
 *
 */
public class VehInfo {
	private String vechNum; //车牌号
	private Date verchBuyDate;//购买日期
	private String vechBrand;//品牌
	private String vechModel;//型号
	private Integer vechMax;//最大载客
	private Float vechDisplay;//排量
	private String verchEnge;//发动机型号
	private char dele_flag;//删除标记
	public String getVechNum() {
		return vechNum;
	}
	public void setVechNum(String vechNum) {
		this.vechNum = vechNum;
	}
	public Date getVerchBuyDate() {
		return verchBuyDate;
	}
	public void setVerchBuyDate(Date verchBuyDate) {
		this.verchBuyDate = verchBuyDate;
	}
	public String getVechBrand() {
		return vechBrand;
	}
	public void setVechBrand(String vechBrand) {
		this.vechBrand = vechBrand;
	}
	public String getVechModel() {
		return vechModel;
	}
	public void setVechModel(String vechModel) {
		this.vechModel = vechModel;
	}
	public Integer getVechMax() {
		return vechMax;
	}
	public void setVechMax(Integer vechMax) {
		this.vechMax = vechMax;
	}
	public Float getVechDisplay() {
		return vechDisplay;
	}
	public void setVechDisplay(Float vechDisplay) {
		this.vechDisplay = vechDisplay;
	}
	public String getVerchEnge() {
		return verchEnge;
	}
	public void setVerchEnge(String verchEnge) {
		this.verchEnge = verchEnge;
	}
	public char getDele_flag() {
		return dele_flag;
	}
	public void setDele_flag(char dele_flag) {
		this.dele_flag = dele_flag;
	}
	
	

}
