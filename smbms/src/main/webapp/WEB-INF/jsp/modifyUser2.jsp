<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="right">
<form method="post" action="modifyUserGo">
	<table border=0>
	 <caption>修改用户信息</caption>
	 <tr><td>用户编码：</td><td><input type="text" name="userCode" value="${user.userCode }"></td></tr>
	 <tr><td>用户姓名</td><td><input type="text" name="userName" value="${user.userName}"></td></tr>
	 <tr><td>性别</td><td><input type="radio" name="gender" value="2"
	 <c:if test="${user.gender==2 }"> checked</c:if>>男
	 <input type="radio" name="gender" value="1"
	 <c:if test="${user.gender==1 }"> checked</c:if>>女
	 <input type="hidden" name="id" value="${user.id }">
	 </td></tr>
	 
	 <tr><td>出生日期</td><td><input type="text" name="birthday"  
	 value='<fmt:formatDate  value="${user.birthday }" pattern="yyyy-MM-dd hh:mm" />'></td></tr>
	 <tr><td>电话：</td><td><input type="text" name="phone" value="${user.phone }"></td></tr>
	 <tr><td>住址：</td><td><input type="text" name="address" value="${user.address }"></td></tr>
	 <tr><td>角色</td><td><input type="radio" name="userRole" value="3" <c:if test="${user.userRole==3 }"> checked</c:if>>普通员工
	 <input type="radio" name="userRole" value="2" <c:if test="${user.userRole==2 }"> checked</c:if>>经理
	 <input type="radio" name="userRole" value="1" <c:if test="${user.userRole==1 }"> checked</c:if>>系统管理员
	 </td></tr>
	 <tr><td colspan ="2"><input type="submit" value="提交">
	 <input type="reset" value="重置">
	 </td></tr>
	 
	</table>
</form>
</div>
<%@include file="./common/foot.jsp"%>