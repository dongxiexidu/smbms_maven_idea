<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="right">
<div class="search">
<form method="post">
	<table>
	  <tr>
	  <td>订单名称:</td>
	  <td><input type="text" name="orderName"></td>
	  <td><input type="submit" value="查询" style="width:90px">
	      <input type="hidden" id="totalPageCount" value="${totalPageCount}"/>
	      <input type="hidden" id="pageIndex" name="pageIndex" value="${currentPageNo}"/>
	  </td></tr>
	</table>
</form>
</div>
   <p align="right"><a href="orderAdd">添加订单</a></p>
   <table  class="providerTable" cellpadding="0" cellspacing="0" width="100%">
   	<tr><th>订单编号</th><th>商品名称</th><th>商品单位</th><th>商品数量</th>
   	<th>商品总额</th><th>是否支付</th><th>操作</th></tr>
   	<c:forEach items="${order }" var="ord">
   	<tr><td>${ord.billCode }</td><td>${ord.productName }</td><td>${ord.productUnit }</td><td>${ord.productCount }</td>
   	<td>${ord.totalPrice }</td>	<td>${ord.isPayment }</td>
   	<td>
   	<a class="" href="viewOrder?id=${ord.id }">查看</a>
   	<a href="modifyOrder?id=${ord.id }">修改</a>
   	<a href="deleteOrderById?id=${ord.id }">删除</a></td></tr>
   	</c:forEach>
   </table>
   <c:import url="./common/rollpage.jsp">
      	<c:param name="totalCount" value="${totalCount}"/>
      	<c:param name="currentPageNo" value="${currentPageNo}"/>
      	<c:param name="totalPageCount" value="${totalPageCount}"/>
</c:import>
</div>
<%@include file="./common/foot.jsp"%>