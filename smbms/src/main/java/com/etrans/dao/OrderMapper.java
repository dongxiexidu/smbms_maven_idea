package com.etrans.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.etrans.domain.Order;

public interface OrderMapper {
	public List<Order> getOrderList(@Param("productName") String productName,
                                    @Param("pageIndex") Integer pageIndex,
                                    @Param("pageSize") Integer pageSize);
	//根据条件获取订单的记录数
	public Integer getOrderCount(@Param("productName") String productName);
	//添加订单
	public Integer orderAdd(Order order);
	//删除订单
	public Integer deleteOrderById(@Param("id") Integer id);
	//修改订单
	public Integer modifyOrder(Order order);
	//根据订单的id获取订单信息
	public Order getOrderById(@Param("id") Integer id);
}
