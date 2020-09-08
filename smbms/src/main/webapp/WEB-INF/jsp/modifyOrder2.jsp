<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="right">
<form method="post" action="modifyOrderGo">
	<table border=0>
	 <caption>修改订单信息</caption>
	 <tr><td>账单编码：</td><td><input type="text" name="billCode" value="${order.billCode }">
	 </td></tr>
	 <tr><td>商品名称：</td><td><input type="text" name="productName" value="${order.productName}"></td></tr>
	 <tr><td>商品描述：</td><td><input type="text" name="productDesc" value="${order.productDesc}"></td></tr>
	 <tr><td>商品单位：</td><td><input type="text" name="productUnit" value="${order.productUnit}"></td></tr>
	 <tr><td>商品数量：</td><td><input type="text" name="productCount" value="${order.productCount}"></td></tr>
	 <tr><td>商品总额：</td><td><input type="text" name="totalPrice" value="${order.totalPrice}"></td></tr>
	 <tr><td>是否支付：</td><td>
	 	<input type="radio" name="isPayment" value="1"
	 	<c:if test="${order.isPayment==1 }"> checked</c:if>>未支付
		<input type="radio" name="isPayment" value="2"
		<c:if test="${order.isPayment==2 }"> checked</c:if>>已支付
	 	<input type="hidden" name="id" value="${order.id }">
	 </td></tr>
	 
	 <tr><td colspan ="2"><input type="submit" value="提交">
	 <input type="reset" value="重置">
	 </td></tr>
	 
	</table>
</form>
</div>
<%@include file="./common/foot.jsp"%>