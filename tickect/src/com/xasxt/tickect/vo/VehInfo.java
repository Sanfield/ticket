package com.xasxt.tickect.vo;

import java.sql.Date;


/**
 * @author sangfei
 * 2017-08-15 15:00:11
 * @category ����ʵ����
 *
 */
public class VehInfo {
	private String vechNum; //���ƺ�
	private Date verchBuyDate;//��������
	private String vechBrand;//Ʒ��
	private String vechModel;//�ͺ�
	private Integer vechMax;//����ؿ�
	private Float vechDisplay;//����
	private String verchEnge;//�������ͺ�
	private char dele_flag;//ɾ�����
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
