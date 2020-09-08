<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>
<div class="right">
<div class="search">
  <form action="getUserList" method="post">
     用户名：<input type="text" name="userName" placeholder="请输入用户名">
     <select name="roleName">
     	<option value="">请选择</option>
     	<option value="经理">经理</option>
     	<option value="普通员工">普通员工</option>
     	<option value="系统管理员">系统管理员</option>
     </select>
	<input type="hidden" id="totalPageCount" value="${totalPageCount}"/>
	<input type="hidden" id="pageIndex" name="pageIndex" value="${currentPageNo}"/>
     <input type="submit" value="查询"  style="width:90px">
  </form>

</div>
<!-- 显示用户列表  -->
 <p align="right"> <a href="addUser">添加用户</a></p>
<table class="providerTable" cellpadding="0" cellspacing="0" width="100%">
  <caption>用户列表</caption>
  <tr class="firstTr"><th>用户编号</th><th>姓名</th><th>性别</th><th>出生日期</th><th>电话</th>
  <th>用户角色名</th><th>操作</th></tr>
  <c:forEach items="${userList }" var="user">
  <tr><td>${user.userCode }</td><td>${user.userName }</td><td>${user.gender }</td>
  <td> <fmt:formatDate value="${user.birthday }" pattern="yyy-MM-dd hh:mm"/>   </td><td>${user.phone }</td>
  <td>${user.role.roleName }</td><td>
  <a href="viewUser?id=${user.id }">查看</a>
  <a href="modifyUser?id=${user.id }">修改</a>
  <a href="deleteUserById?id=${user.id }">删除</a>
  </td>
  </tr>
  </c:forEach>
</table>
<c:import url="./common/rollpage.jsp">
      	<c:param name="totalCount" value="${totalCount}"/>
      	<c:param name="currentPageNo" value="${currentPageNo}"/>
      	<c:param name="totalPageCount" value="${totalPageCount}"/>
</c:import>
</div>
<%@include file="/WEB-INF/jsp/common/foot.jsp" %>