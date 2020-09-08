<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./common/head.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="centercontent tables">
        <div class="pageheader notab">
            <h1 class="pagetitle">修改订单</h1>
        </div><!--pageheader-->
        
        <div id="contentwrapper" class="contentwrapper">
	          <div>
	          	<h3 class="contenttitle2">修改订单信息</h3>
	          </div><!--contenttitle-->
                    
					<form method="post" action="modifyOrderGo" class="stdform stdform2">
                        <p><label>订单编码</label>
                            <span class="field"><input type="text" name="billCode" value="${order.billCode }" class="longinput" /></span>
                        </p>
                        
                        <p><label>商品名称</label>
                            <span class="field"><input type="text" name="productName" value="${order.productName}" class="longinput" /></span>
                        </p>
                        
                        <p><label>商品描述</label>
                            <span class="field"><input type="text" name="productDesc" value="${order.productDesc}" class="longinput"/></span>
                        </p>
                        
                        <p><label>商品单位</label>
                            <span class="field"><input type="text" name="productUnit" value="${order.productUnit}" class="longinput" /></span>
                        </p>
						
                        <p><label>商品数量</label>
                            <span class="field"><input type="text" name="productCount" value="${order.productCount}" class="longinput" /></span>
                        </p>
                        
                        <p><label>商品总价</label>
                            <span class="field"><input type="text" name="totalPrice" value="${order.totalPrice}" class="longinput" /></span>
                        </p>
                        
                        <p><label>是否支付</label>
                            <span class="field">
                            	<input type="radio" name="isPayment" value="1" 
                            		<c:if test="${order.isPayment==1 }"> checked</c:if>/> 未支付 &nbsp; &nbsp;
                            	<input type="radio" name="isPayment" value="2"
									<c:if test="${order.isPayment==2 }"> checked</c:if>/> 已支付 &nbsp; &nbsp;        
                            	<input type="hidden" name="id" value="${order.id }">
                            </span>
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