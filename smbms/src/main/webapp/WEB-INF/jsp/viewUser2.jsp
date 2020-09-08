<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="right">
	<table border="0">
	 <caption>用户信息</caption>
	 <tr><th>用户编号</th><td>${user.userCode }</td></tr>
	 <tr><th>姓名</th><td>${user.userName }</td></tr>
	 <tr><th>性别</th><td>${user.gender }</td></tr>
	 <tr><th>出生日期</th><td>${user.birthday }</td></tr>
	 <tr><th>电话</th><td>${user.phone }</td></tr>
	 <tr><th>用户角色名</th><td>${user.userRole }</td></tr>
	 <tr><th>用户头像</th><td><img src="${user.idPicPath }"></td></tr>
	 <tr><th>证件照片</th><td><img src="${user.workPicPath }"></td></tr>
	 <tr><th colspan="2"><a href="javascript:history.back();">返回</a></th></tr>
	 <tr><th></th><td></td></tr>
	</table>
</div>
<%@include file="./common/foot.jsp"%>