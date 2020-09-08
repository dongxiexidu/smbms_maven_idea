<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="right">
	<table border="0">
	 <caption>订单信息</caption>
	 <tr><th>账单编码：</th><td>${order.billCode }</td></tr>
	 <tr><th>商品名称：</th><td>${order.productName }</td></tr>
	 <tr><th>商品描述：</th><td>${order.productDesc }</td></tr>
	 <tr><th>商品单位：</th><td>${order.productUnit }</td></tr>
	 <tr><th>商品数量：</th><td>${order.productCount }</td></tr>
	 <tr><th>商品总额：</th><td>${order.totalPrice }</td></tr>
	 <tr><th>是否支付：</th><td>
	 	<c:if test="${order.isPayment==2 }">已支付</c:if>
	 	<c:if test="${order.isPayment==1 }">未支付</c:if></td></tr>
	 <tr><th colspan="2"><a href="javascript:history.back();">返回</a></th></tr>
	 <tr><th></th><td></td></tr>
	</table>
</div>
<%@include file="./common/foot.jsp"%>