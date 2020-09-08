<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="centercontent tables">
        <div class="pageheader notab">
            <h1 class="pagetitle">添加用户</h1>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
	          <div>
	          	<h3 class="contenttitle2">填写用户信息</h3>
	          </div><!--contenttitle-->
					<form class="stdform stdform2" method="post" enctype="multipart/form-data" action="addUserGo">
                        <p><label>用户编码</label>
                            <span class="field"><input type="text"  name="userCode" class="longinput" /></span>
                        </p>
                        
                        <p><label>用户姓名</label>
                            <span class="field"><input type="text" name="userName" class="longinput" /></span>
                        </p>
                        
                        <p><label>用户密码</label>
                            <span class="field"><input type="text" name="userPassword" class="longinput" /></span>
                        </p>
                        
						<p><label>用户性别</label>
                            <span class="field">
                            	<input type="radio" name="gender" value="2" checked="checked" /> 男 &nbsp; &nbsp;
                            	<input type="radio" name="gender" value="1" /> 女 &nbsp; &nbsp;        
                            </span>
                        </p>
                        
                        <p><label>出生日期</label>
                            <span class="field"><input type="text" name="birthday" class="longinput" /></span>
                        </p>
                        
                        <p><label>证件照</label>
                            <span class="field"><input type="file" name="midPicPath" class="longinput" /></span>
                        </p>
                        
                        <p><label>工作证</label>
                            <span class="field"><input type="file" name="mworkPicPath" class="longinput" /></span>
                        </p>
                        
						<p><label>用户身份</label>
                            <span class="field"><select name="userRole">
                            	<option value="1" > 系统管理员</option> &nbsp; &nbsp;
                            	<option value="2" > 经理 </option>&nbsp; &nbsp;
                                <option value="3"> 普通员工 </option> &nbsp; &nbsp; 
                            </select></span>
                        </p>
                        
                        <p><label>联系电话</label>
                            <span class="field"><input type="text" name="phone" class="longinput" /></span>
                        </p>
                        
                        <p><label>用户住址</label>
                            <span class="field"><input type="text" name="address" class="longinput" /></span>
                        </p>
                        
                        <p class="stdformbutton">
                        	<input type="submit" class="submit radius2" value="提交" />
                          	<input type="reset" class="reset radius2" value="重置" />
                        </p>
                    </form>
                 <br />

           </div><!--subcontent-->
            
        </div><!--contentwrapper-->
        
	</div><!-- centercontent -->
    
</div><!--bodywrapper-->

</body>
</html>