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
	  <td>供应商名称:</td>
	  <td><input type="text" name="proName"></td>
	  <td><input type="submit" value="查询" style="width:90px">
	      <input type="hidden" id="totalPageCount" value="${totalPageCount}"/>
	      <input type="hidden" id="pageIndex" name="pageIndex" value="${currentPageNo}"/>
	  </td></tr>
	</table>
</form>
</div>
   <p align="right"><a href="providerAdd">添加供应商</a></p>
   <table  class="providerTable" cellpadding="0" cellspacing="0" width="100%">
   	<tr><th>供应商编号</th><th>供应商名称</th><th>联系人</th><th>联系电话</th><th>传真</th>
   	<th>创建时间</th><th>操作</th></tr>
   	<c:forEach items="${providers }" var="pro">
   	<tr><td>${pro.proCode }</td><td>${pro.proName }</td><td>${pro.proContact }</td><td>${pro.proPhone }</td>
   	<td>${pro.proFax }</td>
   	<td><fmt:formatDate value="${pro.creationDate }" pattern="yyyy-MM-dd hh:mm"/></td>
   	<td>
   	<a class="" href="viewProvider?id=${pro.id }">查看</a>
   	<a href="modifyProvider?id=${pro.id }">修改</a>
   	<a href="deleteProviderById?id=${pro.id }">删除</a></td></tr>
   	</c:forEach>
   </table>
   <c:import url="./common/rollpage.jsp">
      	<c:param name="totalCount" value="${totalCount}"/>
      	<c:param name="currentPageNo" value="${currentPageNo}"/>
      	<c:param name="totalPageCount" value="${totalPageCount}"/>
</c:import>
</div>
<%@include file="./common/foot.jsp"%>