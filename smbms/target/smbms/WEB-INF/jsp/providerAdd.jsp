<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="centercontent tables">
        <div class="pageheader notab">
            <h1 class="pagetitle">添加供货商</h1>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
	          <div>
	          	<h3 class="contenttitle2">填写供货商信息</h3>
	          </div><!--contenttitle-->
	                    
					<form class="stdform stdform2" method="post" action="providerAddGo">
                        <p><label>供货商编码</label>
                            <span class="field"><input type="text" name="proCode" class="longinput" /></span>
                        </p>
                        
                        <p><label>供货商名称</label>
                            <span class="field"><input type="text" name="proName" class="longinput" /></span>
                        </p>
                        
                        <p><label>详细描述</label>
                            <span class="field"><input type="text" name="proDesc" class="longinput"></textarea></span>
                        </p>
                        
                        <p><label>联系人</label>
                            <span class="field"><input type="text" name="proContact" class="longinput" /></span>
                        </p>
                        
                        <p><label>联系电话</label>
                            <span class="field"><input type="text" name="proPhone" class="longinput" /></span>
                        </p>
						
                        <p><label>地址</label>
                            <span class="field"><input type="text" name="proAddress" class="longinput" /></span>
                        </p>
                        
                        <p><label>微信</label>
                            <span class="field"><input type="text" name="proFax" class="longinput" /></span>
                        </p>
                        
                        <p class="stdformbutton" align="center">
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