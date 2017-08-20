<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include page="../common/page_common.jsp"></jsp:include>
<title>emp_add</title>
<script type="text/javascript">
	var flag = true;
	$(function() {
		$("#datepicker").datepicker({
			language : 'zh-CN'
		});
		$("#datepicker2").datepicker({
			language : 'zh-CN'
		});
		$("#account").blur(function(){
			flag=true;
			var account=$("#account").val();
			if(account){
				$.get("${pageContext.request.contextPath}/ajax/checkAccount.action",{"info.account":account},function(r){
					if(r){
						if(r.code==0){
							if(r.result){
								flag=true;
							}else{
								flag=false;
								alert("该账号已存在,不能使用!");
							}
						}else{
							alert(r.message);
						}
					}
				},"json");
			}
		});
	});	
	
	function checkInput() {
		if(!flag){
			return false;
		}
		var r = checkRequired([ "account", "pwd", "confirmPwd", "realName",
				"telephone", "certificateNumber", "dob" ]);
		if (!r) {

			return false;
		} else {
			return true;
		}

	}
</script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-2 col-xs-2 col-xs-offset-5 col-md-offset-5">
				<h1>emp_add</h1>
				<br>
				<s:actionmessage />
			</div>
		</div>
		<hr>
		<div class="col-md-6 col-xs-12 col-md-offset-3">
			<form action="${pageContext.request.contextPath }/emp/add"
				method="post" class="form-horizontal">

				<%@include file="../common/page_emp.jsp"%>
			</form>
		</div>
	</div>

</body>
</html>