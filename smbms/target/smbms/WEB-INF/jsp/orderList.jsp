<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="centercontent tables">
    
    <div class="pageheader notab">
        <h1 class="pagetitle">订单管理</h1>
    </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
          <div>
          	<h3 class="contenttitle2">订单列表</h3>
          	<form method="post">
          		<p>订单名称：<input type="text" name="orderName" style="width: 25%">
          		<input type="submit" class="btn btn_orange btn_search" value="查询">
	     			 <input type="hidden" id="totalPageCount" value="${totalPageCount}"/>
	     			 <input type="hidden" id="pageIndex" name="pageIndex" value="${currentPageNo}"/>
          		<a href="orderAdd" class="btn btn_orange btn_link" style="float: right"><span>添加订单</span></a>
          	</form>
          	</div><!--contenttitle-->
           			<table cellpadding="0" cellspacing="0" border="0" class="stdtable">
                    <colgroup>
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                        <col class="con1" />
                        <col class="con0" />
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="head0">订单编码</th>
                            <th class="head1">商品名称</th>
                            <th class="head0">商品单位</th>
                            <th class="head1">商品数量</th>
                            <th class="head0">商品总额</th>
                            <th class="head1">是否支付</th>
                            <th class="head0">操作</th>
                        </tr>
                    </thead>
                    
                    <tbody>
                        <c:forEach items="${order }" var="ord"><tr>
					   	<td>${ord.billCode }</td>
					   	<td>${ord.productName }</td>
					   	<td>${ord.productUnit }</td>
					   	<td class="center">${ord.productCount }</td>
					   	<td class="center">${ord.totalPrice }</td>	
					   	<td class="center">
					   		<c:if test="${ord.isPayment==2 }">未支付</c:if>
                           	<c:if test="${ord.isPayment==1}">已支付</c:if>
					   	</td>
					   	<td class="center">
						   	<a href="viewOrder?id=${ord.id }" style="color: dodgerblue">查看</a>
                            <a href="modifyOrder?id=${ord.id }" style="color: dodgerblue">修改</a>
                            <a href="deleteOrderById?id=${ord.id }" style="color: dodgerblue">删除</a>
						</td>
					   	</tr></c:forEach>
                   </tbody>
               </table>
              </br>
	        <c:import url="./common/rollpage.jsp">
	      		<c:param name="totalCount" value="${totalCount}"/>
	      		<c:param name="currentPageNo" value="${currentPageNo}"/>
	      		<c:param name="totalPageCount" value="${totalPageCount}"/>
			</c:import>
        </div><!--contentwrapper-->
        
	</div><!-- centercontent -->
    
</div><!--bodywrapper-->

</body>
</html>