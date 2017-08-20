<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="row">

	<div class="form-group">
		<label for="account" class="col-md-4 col-xs-5 control-label">
			<span class=" glyphicon glyphicon-user"></span>帐号:
		</label>
		<div class="col-md-8 input-group">
			<input type="text" name="info.account" id="account"
				class="form-control">
		</div>
	</div>

	<div class="form-group">
		<label for="pwd" class="col-md-4 col-xs-5  control-label"> <span
			class="glyphicon glyphicon-hand-right"></span>密码:
		</label>
		<div class="col-md-8 input-group">
			<input type="text" name="info.pwd" id="pwd" class="form-control">
		</div>
	</div>

	<div class="form-group">
		<label for="realName" class="col-md-4 col-xs-5  control-label">
			<span class="glyphicon glyphicon-hand-right"></span>姓名:
		</label>
		<div class="col-md-8 input-group">
			<input type="text" name="info.realName" id="realName"
				class="form-control">
		</div>
	</div>
	<div class="form-group">
		<label class="col-md-4 col-xs-5 control-label">性别:</label>
		<div class="radio col-md-8">
			<label><input type="radio" name="info.sex" value="0"
				checked="checked">男</label> <label><input type="radio"
				name="info.sex" value="1">女</label>
		</div>
	</div>

	<div class="form-group">
		<label for="nationality" class="col-md-4 col-xs-5  control-label">
			<span class="glyphicon glyphicon-hand-right"></span>民族:
		</label>
		<div class="col-md-8 input-group">
			<input type="text" name="info.nationality" id="nationality"
				class="form-control">
		</div>
	</div>

	<div class="form-group">
		<label for="certificateType" class="col-md-4 col-xs-5  control-label">
			<span class="glyphicon glyphicon-hand-right"></span> 证件类型:
		</label> <select name="info.certificateType">
			<option value="0">身份证</option>
			<option value="1">居住证</option>
			<option value="2">护照</option>
			<option value="3">户口本</option>
			<option value="4">军人证</option>
			<option value="5">党员证</option>
			<option value="5">港澳通行证</option>
		</select>

	</div>

	<div class="form-group">
		<label for="certificateNumber"
			class="col-md-4 col-xs-5  control-label"> <span
			class="glyphicon glyphicon-hand-right"></span>证件号码:
		</label>
		<div class="col-md-8 input-group">
			<input type="text" name="info.certificateNumber"
				id="certificateNumber" class="form-control">
		</div>
	</div>

	<div class="form-group">
		<label class="col-md-4 col-xs-5  control-label" for="dob">出生日期:</label>
		<div class="col-md-8 input-group date" id="datepicker"
			data-date-format="yyyy-mm-dd">
			<input class="form-control" size="16" type="text" readonly
				name="info.dob" id="dob">
			<div class="input-group-addon">
				<span class="add-on glyphicon glyphicon-calendar"></span>
			</div>
		</div>
	</div>

	<div class="form-group">
		<label for="address" class="col-md-4 col-xs-5  control-label">
			<span class="glyphicon glyphicon-hand-right"></span>住址:
		</label>
		<div class="col-md-8 input-group">
			<input type="text" name="info.address" id="address"
				class="form-control">
		</div>
	</div>

	<div class="form-group">
		<label for="telephone" class="col-md-4 col-xs-5  control-label">
			<span class="glyphicon glyphicon-hand-right"></span>电话:
		</label>
		<div class="col-md-8 input-group">
			<input type="text" name="info.telephone" id="telephone"
				class="form-control">
		</div>
	</div>

	<div class="form-group">
		<label for="duty" class="col-md-4 col-xs-5  control-label"> <span
			class="glyphicon glyphicon-hand-right"></span>职务:
		</label>
		<div class="col-md-8 input-group">
			<input type="text" name="info.duty" id="duty" class="form-control">
		</div>
	</div>

	<div class="form-group">
		<label class="col-md-4 col-xs-5  control-label" for="hireDate">参加工作日期:</label>
		<div class="col-md-8 input-group date" id="datepicker2"
			data-date-format="yyyy-mm-dd">
			<input class="form-control" size="16" type="text" readonly
				name="info.hireDate" id="hireDate">
			<div class="input-group-addon">
				<span class="add-on glyphicon glyphicon-calendar"></span>
			</div>
		</div>
	</div>

	<div class="form-group">
		<label for="role" class="col-md-4 col-xs-5  control-label"> <span
			class="glyphicon glyphicon-hand-right"></span>角色:
		</label>
		<div class="col-md-8 input-group">
			<input type="radio" name="info.role" id="role" value="0" checked="checked">管理员
			<input type="radio" name="info.role" id="role" value="1">售票员
			<input type="radio" name="info.role" id="role" value="2">站务 <input
				type="radio" name="info.role" id="role" value="3">司机 <input
				type="radio" name="info.role" id="role" value="4">行包员
		</div>
	</div>

	<div class="form-group">
		<div class="col-md-1 col-xs-1 col-md-offset-5 col-xs-offset-5">
			<button type="submit" onclick="return checkInput()"
				class="btn btn-info">录入</button>
		</div>
	</div>


</div>