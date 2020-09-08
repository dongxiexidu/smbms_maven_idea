<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="right">
<form method="post" action="modifyProviderGo">
	<table border=0>
	 <caption>修改供应商信息</caption>
	 <tr><td>供应商编码：</td><td><input type="text" name="proCode" value="${provider.proCode }">
	 </td></tr>
	 <tr><td>供应商名称：</td><td><input type="text" name="proName" value="${provider.proName}"></td></tr>
	 <tr><td>供应商详细描述：</td><td><input type="text" name="proDesc" value="${provider.proDesc}"></td></tr>
	 <tr><td>供应商联系人：</td><td><input type="text" name="proContact" value="${provider.proContact}"></td></tr>
	 <tr><td>供应商联系人：</td><td><input type="text" name="proPhone" value="${provider.proPhone}"></td></tr>
	 <tr><td>地址：</td><td><input type="text" name="proAddress" value="${provider.proAddress}"></td></tr>
	 <tr><td>传真：</td><td><input type="text" name="proFax" value="${provider.proFax}">
	 <input type="hidden" name="id" value="${provider.id}">
	 </td></tr>
	 
	 <tr><td colspan ="2"><input type="submit" value="提交">
	 <input type="reset" value="重置">
	 </td></tr>
	 
	</table>
</form>
</div>
<%@include file="./common/foot.jsp"%>