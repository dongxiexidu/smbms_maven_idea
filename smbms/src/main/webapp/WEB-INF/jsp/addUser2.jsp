<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="right">
<form method="post" enctype="multipart/form-data" action="addUserGo">
	<table border=0>
	 <caption>添加用户</caption>
	 <tr><td colspan="2"><font color="red">${error }</font></td></tr>
	 <tr><td>用户编码：</td><td><input type="text" name="userCode"></td></tr>
	 <tr><td>用户姓名：</td><td><input type="text" name="userName"></td></tr>
	 <tr><td>密码：</td><td><input type="text" name="userPassword"></td></tr>
	 <tr><td>性别：</td><td><input type="radio" name="gender" value="2">男
	 <input type="radio" name="gender" value="1">女</td></tr>
	 <tr><td>出生日期：</td><td><input type="text" name="birthday"></td></tr>
	 <tr><td>电话：</td><td><input type="text" name="phone"></td></tr>
	 <tr><td>住址：</td><td><input type="text" name="address"></td></tr>
	 <tr><td>角色：</td><td><select name="userRole">
	    <option value="1">系统管理员</option>
	    <option value="2">经理</option>
	    <option value="3">普通员工</option>
	 </select></td></tr>
	 <tr><td>证件照：</td><td><input type="file" name="midPicPath"></td></tr>
	 <tr><td>工作证照片：</td><td><input type="file" name="mworkPicPath"></td></tr>
	 <tr><td colspan ="2"><input type="submit" value="提交">
	 <input type="reset" value="重置">
	 </td></tr>
	 
	</table>
</form>
</div>
<%@include file="./common/foot.jsp"%>