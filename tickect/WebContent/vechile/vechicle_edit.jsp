<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta>
<jsp:include page="../common/page_common.jsp"></jsp:include>
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		$("#datepicker").datepicker({
			language : 'zh-CN'
		});
	});
</script>
</head>
<body>
	<h1>
		车辆管理<small>编辑车辆信息</small>
	</h1>
<div class="container" >
	<div class="row" >
	<div class="col-md-7 col-xs-12">
			<form action="${pageContext.request.contextPath}/vehicle/update.action" class="form-horizontal">
			<div class="form-group">
				<label for="account" class="col-md-3 col-xs-2 control-label"> <span
					class="glyphicon glyphicon-cog"></span> 车牌号:
				</label>
				<div class="col-md-9 col-xs-5  input-group">
					<div class="input-group-addon">
						<span class="glyphicon glyphicon-plane"></span>
					</div>
					<input type="text" name="vehInfo.vechNum" id="vechNum" class="form-control" value="${info.vechNum }" readonly="readonly"/>
					<div class="input-group-addon">车牌号</div><span id="msgPrompt"></span>
				</div>
			</div>
			<div class="form-group">
				<label for="pwd" class="col-md-3 col-xs-2 control-label"> <span
					class="glyphicon glyphicon-bold"></span> 品牌:
				</label>
				<div class="col-md-9 col-xs-5  input-group">
					<input type="text" name="vehInfo.vechBrand" id="vechBrand" class="form-control" value="${info.vechBrand }" />
				</div>
			</div>
			<div class="form-group">
				<label for="pwd" class="col-md-3 col-xs-2 control-label"> <span
					class="glyphicon glyphicon-asterisk"></span> 型号:
				</label>
				<div class="col-md-9 col-xs-5  input-group">
					<input type="text" name="vehInfo.vechModel" id="vechModel" class="form-control" value="${info.vechModel }"/>
				</div>
			</div>
			<div class="form-group">
				<label for="pwd" class="col-md-3 col-xs-2 control-label"> <span
					class="glyphicon glyphicon-warning-sign"></span> 最大载客量:
				</label>
				<div class="col-md-9 col-xs-5 input-group">
					<input type="text" name="vehInfo.vechMax" id="vechMax" class="form-control" value="${info.vechMax }"/>
				</div>
			</div>
			<div class="form-group">
				<label for="pwd" class="col-md-3 col-xs-2 control-label"> <span
					class="glyphicon glyphicon-lock"></span> 排气量:
				</label>
				<div class="col-md-9 col-xs-5 input-group">
					<input type="text" name="vehInfo.vechDisplay" id="vechDisplay" class="form-control" value="${info.vechDisplay}"/>
				</div>
			</div>
			<div class="form-group">
				<label for="pwd" class="col-md-3 col-xs-2 control-label"> <span
					class="glyphicon glyphicon-align-center"></span> 发动机型号:
				</label>
				<div class="col-md-9 col-xs-5 input-group">
					<input type="text" name="vehInfo.verchEnge" id="verchEnge" class="form-control" value="${info.verchEnge }"/>
				</div>
			</div>
			<div class="form-group">
				<label class="col-md-3 col-xs-2 control-label" for="dob">购买日期:</label>
				<div class="col-md-9 col-xs-5 input-group date" id="datepicker"
					data-date-format="yyyy-mm-dd">
					<input class=" form-control" size="16" type="text" readonly id="verchBuyDate" name="vehInfo.verchBuyDate" value="${info.verchBuyDate }">
					<div class="input-group-addon">
						<span class="add-on glyphicon glyphicon-calendar"></span>
					</div>
				</div>
			</div>
			<div class="col-md-9 col-xs-5 form-group " align="center">
				<button type="submit" class="btn col-md-4 col-md-offset-4"">更改</button>
			</div>
		</form>
	</div>
</div>
</div>
<s:fielderror ></s:fielderror>
</body>
</html>