<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="right">
	<table border="0">
	 <caption>供应商信息</caption>
	 <tr><th>供应商编码：</th><td>${provider.proCode }</td></tr>
	 <tr><th>供应商名称：</th><td>${provider.proName }</td></tr>
	 <tr><th>供应商详细描述：</th><td>${provider.proDesc }</td></tr>
	 <tr><th>供应商联系人：</th><td>${provider.proContact }</td></tr>
	 <tr><th>联系电话：</th><td>${provider.proPhone }</td></tr>
	 <tr><th>地址：</th><td>${provider.proAddress }</td></tr>
	 <tr><th colspan="2"><a href="javascript:history.back();">返回</a></th></tr>
	 <tr><th></th><td></td></tr>
	</table>
</div>
<%@include file="./common/foot.jsp"%>