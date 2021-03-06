<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="../common/page_common.jsp"%>
<meta>
<title>路线列表</title>
<script type="text/javascript">
$(function(){
	getStations();
	$("#routeName").blur(checkRouteByName);
});
var stationList;
function getStations(){
	$.get("${pageContext.request.contextPath}/ajax/getStations.action",function(data){
	//	console.info(data);
		if(data){
			stationList=data;
			setStartTerminal();
		}else{
			alert("刷新后再试");
		}
	})
}
//设置起始站点
function setStartTerminal(){
	var start=$("#staList");
	var terminal=$("#terminalId");
	var msgPrompt = $("#msgPrompt");
	var stat = null, option = null;
	if(stationList!=null&&stationList.length>0){
	for(var i=0;i<stationList.length-1;i++){
		stat=stationList[i];
		if(stat.distance==0){
			start.append("<option value="+stat.stationId+">"+stat.stationName+"</option>");
		}else{
			terminal.append("<option value="+stat.stationId+">"+stat.stationName+"</option>");
		}
	}
	}else{
		msgPrompt.text("暂无站点");
	}
	
}
function checkInput() {
	var r = checkRequired([  "routeName", "staList",
			"terminalId", "price","baggageFee" ]);
	if (!r)
		return;
	var price = Number($("#price").val());
	if (isNaN(price) || price < 0) {
		alert("输入的票价不合法!");
		return;
	}
	var baggageFee=Number($("#baggageFee").val());
	if (isNaN(baggageFee) || baggageFee < 0) {
		alert("行包托运费不合法!");
		return;
	}
	document.forms[0].submit();
}
//判断路线是否重名
function checkRouteByName(){
	//$("#msgPrompt").empty();
	var route=$("#routeName").val();
	//alert(route);
	$.get("${pageContext.request.contextPath}/ajax/checkRoute",{"routeInfo.routeName":route},function(data){
		if(data){
			if(data.code==0){
				if(data.result){
					
				}else{
					$("#msgPrompt").text("该线路已存在");
					$("#routeName").focus();
				}
			}else{
				alert(data.message);
			}
		}
	},"json");
}
</script>
</head>
<body>
	<div class="row">
			<ol class="breadcrumb">
			<li><a href="#">线路和站点</a></li>
			<li class="active">路线列表</li>
		</ol>
		<div class="col-md-7 col-xs-7">
			<span class="label  label-info">现有客运线路:</span>
			<table
				class="table table-striped table-bordered table-hover table-condensed">
				<thead>
					<tr>
						<th>线路编号</th>
						<th>线路名称</th>
						<th>始发站</th>
						<th>终点站</th>
						<th>票价(元)</th>
						<th>操作</th>
					</tr>
				</thead>
				<tbody id="tbody1">
				<c:forEach items="${list }" var="info">
				<tr>
					<td>${info.routeId }</td>
					<td><a href="${pageContext.request.contextPath}/route/route_station.jsp?routeId=${info.routeId }">${info.routeName }</a></td>
					<td>${info.startName }</td>
					<td>${info.terminalName }</td>
					<td>${info.price }</td>
					<td></td>
				</tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		<div class="col-md-5 col-xs-5 ">
			<span class="label label-warning">录入新线路:</span>
			<form action="${pageContext.request.contextPath}/route/addRoute " method="post" class="form-horizontal"
				style="background-color: #cacccc;">
				<div class="form-group">
					<div id="msgPrompt" class="col-md-10 col-xs-5 col-md-offset-2 text-danger">&nbsp;</div>
				</div>
				<div class="form-group">
					<label for="routeName" class="col-md-4  col-xs-4 control-label">线路名称:</label>
					<div class="col-md-6 col-xs-7">
						<input type="text" id="routeName" name="routeInfo.routeName" 
							class="form-control"  maxlength="4"/>
					</div>
				</div>
				<div class="form-group">
					<label for="startId" class="col-md-4 col-xs-4 control-label">始发站:</label>
					<div class="col-md-6 col-xs-7" >
						<select name="routeInfo.startStation" class="form-control" id="staList">
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="terminalId" class="col-md-4  col-xs-4 control-label">终点站:</label>
					<div class="col-md-6 col-xs-7">
						<select name="routeInfo.terminalStation" class="form-control" id="terminalId">
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="price" class="col-md-4 col-xs-4 control-label">票价:</label>
					<div class="col-md-6 col-xs-7">
						<div class="input-group">
							<input type="text" id="price" name="routeInfo.price" class="form-control" />
							<span class="input-group-addon">元</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label for="baggageFee" class="col-md-4  col-xs-4 control-label">托运费:</label>
					<div class="col-md-6 col-xs-7">
						<div class="input-group">
							<input type="text" id="baggageFee" name="routeInfo.baggaceFee"
								class="form-control" /> <span class="input-group-addon ">元/公斤</span>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-md-5 col-xs-4 col-xs-offset-4">
						<button type="button" class="btn btn-primary"
							onclick="checkInput();">提交</button>
					</div>
				</div>
			</form>
		</div>
	</div>

</body>
</html>