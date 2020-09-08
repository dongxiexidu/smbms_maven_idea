<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="right">
<form method="post" action="providerAddGo">
	<table border=0>
	 <caption>添加供应商</caption>
	 <tr><td>供应商编码：</td><td><input type="text" name="proCode"></td></tr>
	 <tr><td>供应商名称：</td><td><input type="text" name="proName"></td></tr>
	 <tr><td>供应商详细描述：</td><td><input type="text" name="proDesc"></td></tr>
	 <tr><td>供应商联系人：</td><td><input type="text" name="proContact"></td></tr>
	 <tr><td>联系电话：</td><td><input type="text" name="proPhone"></td></tr>
	 <tr><td>地址：</td><td><input type="text" name="proAddress"></td></tr>
	 <tr><td colspan ="2"><input type="submit" value="提交">
	 <input type="reset" value="重置">
	 </td></tr>
	 
	</table>
</form>
</div>
<%@include file="./common/foot.jsp"%>