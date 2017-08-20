package com.xasxt.tickect.vo;

public class RouteInfo {
	/**
	 * ��·���,����
	 */
	private String routeId;
	/**
	 * ��·����
	 */
	private String routeName;
	/**
	 * ʼ��վ���
	 */
	private Integer startStation;
	/**
	 * �յ�վ���
	 */
	private Integer terminalStation;
	
	private Float baggaceFee;
	
	private String startName;
	private String terminalName;
	
	public String getStartName() {
		return startName;
	}

	public void setStartName(String startName) {
		this.startName = startName;
	}

	public String getTerminalName() {
		return terminalName;
	}

	public void setTerminalName(String terminalName) {
		this.terminalName = terminalName;
	}

	/**
	 * ȫ�̻���Ʊ��(Ԫ)
	 */
	private Float price;
	
	public String getRouteId() {
		return routeId;
	}

	public void setRouteId(String routeId) {
		this.routeId = routeId;
	}

	public String getRouteName() {
		return routeName;
	}

	public void setRouteName(String routeName) {
		this.routeName = routeName;
	}

	public Integer getStartStation() {
		return startStation;
	}

	public void setStartStation(Integer startStation) {
		this.startStation = startStation;
	}

	public Integer getTerminalStation() {
		return terminalStation;
	}

	public void setTerminalStation(Integer terminalStation) {
		this.terminalStation = terminalStation;
	}

	public Float getPrice() {
		return price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public Float getBaggaceFee() {
		return baggaceFee;
	}

	public void setBaggaceFee(Float baggaceFee) {
		this.baggaceFee = baggaceFee;
	}

}
