package com.xasxt.tickect.vo;

public class StationFeeInfo {
	private Integer serialId;
	private String routeId;
	private String stationId;
	private Integer order;
	private Float price;
	private Float baggageFee;
	
	private RouteInfo routeInfo;
	
	public RouteInfo getRouteInfo() {
		return routeInfo;
	}
	public void setRouteInfo(RouteInfo routeInfo) {
		this.routeInfo = routeInfo;
	}
	public Integer getSerialId() {
		return serialId;
	}
	public void setSerialId(Integer serialId) {
		this.serialId = serialId;
	}
	public String getRouteId() {
		return routeId;
	}
	public void setRouteId(String routeId) {
		this.routeId = routeId;
	}
	public String getStationId() {
		return stationId;
	}
	public void setStationId(String stationId) {
		this.stationId = stationId;
	}
	public Integer getOrder() {
		return order;
	}
	public void setOrder(Integer order) {
		this.order = order;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public Float getBaggageFee() {
		return baggageFee;
	}
	public void setBaggageFee(Float baggageFee) {
		this.baggageFee = baggageFee;
	}
	
}
