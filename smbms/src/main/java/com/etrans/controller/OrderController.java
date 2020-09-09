package com.etrans.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.etrans.domain.Order;
import com.etrans.domain.User;
import com.etrans.service.OrderService;
import com.etrans.util.Constants;
import com.etrans.util.PageHelper;

@Controller
public class OrderController {
   //引入业务层的资源
	@Autowired
	OrderService orderService;
	//添加订单界面
	@RequestMapping("/orderAdd")
	public String orderAdd() {
		return "orderAdd";
	}
	//添加订单处理方法
	@RequestMapping("/orderAddGo")
	public String orderAddGo(Order order,HttpSession session) {
		Order ord = new Order();
		ord = order;
		Integer oid=null;
		oid=((User) session.getAttribute(Constants.USER_SESSION)).getId();
		if(null!=oid) {
			ord.setCreatedBy(oid);
		    if(orderService.orderAdd(ord))
		    	return "redirect:getOrder";
		    else
		    	return "redirect:orderAdd";
		}
		else
			return "redirect:login";
	}
	//获取订单列表的处理方法
	@RequestMapping("/getOrder")
    public String getOrderList(String orderName,Model md,String pageIndex) {
    	String strName = "";
    	if (!StringUtils.isEmpty(orderName)) {
    		strName=orderName;
    	}
    	Integer currentPageNo = 1;
    	Integer pageSize = Constants.pageSize;
    	if(!StringUtils.isEmpty(pageIndex)) {
    		currentPageNo=Integer.parseInt(pageIndex);
    	}
    	//根据条件获取总记录数
    	Integer totalCount = orderService.getOrderCount(strName);
    	//计算可以分几页
    	PageHelper pages = new PageHelper();
    	pages.setCurrentPageNo(currentPageNo);
    	pages.setPageSize(pageSize);
    	pages.setTotalCount(totalCount);

    	int totalPageCount = pages.getTotalPageCount();
    	List<Order> orders = orderService.getOrderList(strName,(currentPageNo-1)*pageSize,pageSize);
    	md.addAttribute("totalPageCount", totalPageCount);
		md.addAttribute("totalCount", totalCount);
		md.addAttribute("currentPageNo", currentPageNo);
    	md.addAttribute("order",orders);
    	return "orderList";
    }
	//根据id删除订单信息
	@RequestMapping("deleteOrderById")
	public String deleteOrderById(String id,Model md) {
		String msg="";
		if(orderService.deleteOrderById(id)) {
			msg="删除订单成功！";
		}else
			msg="删除订单失败！";
		md.addAttribute("msg", msg);
		return "redirect:getOrder";
	}
	//添加修改界面
	@RequestMapping("/modifyOrder")
	public String modifyOrder(String id,Model md) {
		Order order=new Order();
		order=orderService.getOrderById(id);
		md.addAttribute("order", order);
		return "modifyOrder";
	}
	//添加修改用户的执行路由信息
	@RequestMapping("/modifyOrderGo")
	public String modifyOrderGo(Order order,HttpSession session) {
		Integer oid=((User)session.getAttribute(Constants.USER_SESSION)).getId();
		if(null!=order) {
			order.setModifyBy(oid);
			order.setModifyDate(new Date());
			orderService.modifyOrder(order);
		}
		return "redirect:getOrder";
	}
	//根据ID查看订单
	@RequestMapping("/viewOrder")
	public String viewOrder(String id,Model md) {
		Order order=new Order();
		order=orderService.getOrderById(id);
		md.addAttribute("order", order);
		return "viewOrder";
	}
}
