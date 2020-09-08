<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/WEB-INF/jsp/common/head.jsp"%>

    <div class="centercontent tables">
        <div class="pageheader notab">
            <h1 class="pagetitle">用户管理</h1>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
          <div>
          	<h3 class="contenttitle2">用户列表</h3>
          	<form method="post" action="getUserList">
          		<p>用户名：<input type="text" name="userName" style="width: 20%" placeholder="请输入用户名">
         			身份：<select name="roleName">
         				<option value="">--请选择--</option>
     					<option value="经理">经理</option>
     					<option value="普通员工">普通员工</option>
     					<option value="系统管理员">系统管理员</option>
         			</select>
          			<input type="hidden" id="totalPageCount" value="${totalPageCount}"/>
					<input type="hidden" id="pageIndex" name="pageIndex" value="${currentPageNo}"/>
          			<input class="btn btn_orange btn_search" type="submit" value="查询">
          		<a href="addUser" class="btn btn_orange btn_link" style="float: right"><span>添加用户</span></a>
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
                            <th class="head0">用户编号</th>
                            <th class="head1">用户姓名</th>
                            <th class="head0">用户性别</th>
                            <th class="head1">出生日期</th>
                            <th class="head0">联系电话</th>
                            <th class="head1">用户身份</th>
                            <th class="head0">操作</th>
                        </tr>
                    </thead>
                    
                    <tbody>
                    	<c:forEach items="${userList }" var="user"><tr>
                            <td>${user.userCode }</td>
                            <td>${user.userName }</td>
                            <td>
                           		<c:if test="${user.gender==2 }">男</c:if>
                           		<c:if test="${user.gender==1}">女</c:if>
                            </td>
                            <td class="center"><fmt:formatDate value="${user.birthday }" pattern="yyy-MM-dd hh:mm"/></td>
                            <td class="center">${user.phone }</td>
                            <td class="center">${user.role.roleName }</td>
                            <td class="center">
                            	<a href="viewUser?id=${user.id }" style="color: dodgerblue">查看</a>
                            	<a href="modifyUser?id=${user.id }" style="color: dodgerblue">修改</a>
                            	<a href="deleteUserById?id=${user.id }" style="color: dodgerblue">删除</a>
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