package com.etrans.service;

import java.util.List;
import com.etrans.domain.Order;

public interface OrderService{
	   public List<Order> getOrderList(String orderName, Integer pageIndex, Integer pageSize);
	   //根据条件获取订单的记录数
	   public Integer getOrderCount(String orderName);
	   //添加订单
	   public boolean orderAdd(Order order);
	   //修改订单信息
       public boolean modifyOrder(Order order);
	   //删除订单
	   public boolean deleteOrderById(String id);
	   //根据id获取订单信息
	   public Order getOrderById(String id);
}
