<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>

<div class="right">
<form method="post" action="modifyPasswordGo">
	<table border=0>
	 <caption>修改用户密码</caption>
	 <tr><td>用户编码：</td><td><input type="text" name="userCode"></td></tr>
	 <tr><td>旧密码</td><td><input type="text" name="userPassword"></td></tr>
	 <tr><td>新密码</td><td><input type="text" name="newPassword"></td></tr>
	 <tr><td colspan ="2"><input type="submit" value="提交">
	 <input type="reset" value="重置">
	 </td></tr>
	
	</table>
</form>
</div>
<%@include file="./common/foot.jsp"%>