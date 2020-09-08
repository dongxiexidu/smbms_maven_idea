<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="centercontent tables">
     <div class="pageheader notab">
         <h1 class="pagetitle">供货商管理</h1>
     </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
          <div>
          	<h3 class="contenttitle2">供货商列表</h3>
          	<form method="post">
          		<p>供货商名称：<input type="text" name="proName" style="width: 25%">
          		<input type="submit" class="btn btn_orange btn_search" value="查询">
	          		<input type="hidden" id="totalPageCount" value="${totalPageCount}"/>
	     			<input type="hidden" id="pageIndex" name="pageIndex" value="${currentPageNo}"/>
          		<a href="providerAdd" class="btn btn_orange btn_link" style="float: right"><span>添加供货商</span></a>
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
                            <th class="head0">供应商编号</th>
                            <th class="head1">供应商名称</th>
                            <th class="head0">联系人</th>
                            <th class="head1">联系电话</th>
                            <th class="head0">微信</th>
                            <th class="head1">创建时间</th>
                            <th class="head0">操作</th>
                        </tr>
                    </thead>
                    
                    <tbody>
                   		<c:forEach items="${providers }" var="pro"><tr>
	                        <td>${pro.proCode }</td>
	                        <td>${pro.proName }</td>
	                        <td>${pro.proContact }</td>
	                        <td class="center">${pro.proPhone }</td>
							<td class="center">${pro.proFax }</td>
							<td class="center"><fmt:formatDate value="${pro.creationDate }" pattern="yyyy-MM-dd hh:mm"/></td>
							<td class="center">
	                           	<a href="viewProvider?id=${pro.id }" style="color: dodgerblue">查看</a>
	                           	<a href="modifyProvider?id=${pro.id }" style="color: dodgerblue">修改</a>
	                           	<a href="deleteProviderById?id=${pro.id }" style="color: dodgerblue">删除</a>
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