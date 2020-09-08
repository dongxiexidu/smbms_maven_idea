package com.etrans.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.etrans.dao.OrderMapper;
import com.etrans.domain.Order;

@Service
public class OrderServiceImpl implements OrderService {
	//引入Dao层
	@Autowired
	OrderMapper orderDao;
	@Override
	public List<Order> getOrderList(String orderName, Integer pageIndex, Integer pageSize) {
		List<Order> order = new ArrayList<Order>();
		try {
			order=orderDao.getOrderList(orderName, pageIndex, pageSize);
		}catch(RuntimeException e) {
			e.printStackTrace();
			throw new RuntimeException("查询异常"+e.toString());
		}
		return order;
	}

	@Override
	public Integer getOrderCount(String orderName) {
		Integer num = 0;
		try {
			num = orderDao.getOrderCount(orderName);
		}catch(RuntimeException e) {
			e.printStackTrace();
			throw new RuntimeException("获取总数异常"+e.toString());
		}
		return num;
	}

	@Override
	public boolean orderAdd(Order order) {
		boolean flag = false;
		try {
			if(orderDao.orderAdd(order)>=1) {
				flag = true;
			}
		}catch(RuntimeException e) {
			e.printStackTrace();
			throw new RuntimeException("添加订单错误"+e.getMessage());
		}
		return flag;
	}

	@Override
	public boolean modifyOrder(Order order) {
		String msg="";
		boolean flag=false;
		try {
			if(null!=order) {
				if(orderDao.modifyOrder(order)>0)
					flag=true;
			}
			
		}catch(RuntimeException e) {
			throw new RuntimeException(msg+e);
		}
		return flag;
	}

	@Override
	public boolean deleteOrderById(String id) {
		boolean flag=false;
		Integer nid=null;
		String msg="";
		try {
			if(!StringUtils.isEmpty(id)) {
				nid=Integer.parseInt(id);
				if(orderDao.deleteOrderById(nid)>0)
					flag=true;
			}else msg="参数为空！";
		}catch(RuntimeException e) {
			throw new RuntimeException(msg+e);
		}
		return flag;
	}

	@Override
	public Order getOrderById(String id) {
		//字符串转换整型数据
		String msg="";
		Integer nid=null;
		Order order=new Order();
		try {
			if(!StringUtils.isEmpty(id)) {
				nid=Integer.parseInt(id);
				order=orderDao.getOrderById(nid);
			}else
				msg="用户的id为空！";
			
		}catch(RuntimeException e) {
			throw new RuntimeException(msg+e);
		}
		return order;
	}

}
