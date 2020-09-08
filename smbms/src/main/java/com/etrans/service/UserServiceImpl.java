package com.etrans.service;


import java.util.List;

import javax.annotation.Resource;
import javax.management.RuntimeErrorException;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;

import com.etrans.dao.UserMapper;
import com.etrans.domain.User;
@Service
public class UserServiceImpl implements UserService {
	@Resource
	UserMapper userMapper;
	@Override
	public User checkLogin(String userCode, String userPassword) {
		return userMapper.checkLogin(userCode, userPassword);
	}
	@Override
	public List<User> getUserList(String userName,String roleName,Integer start,Integer numbers) {
		return userMapper.getUserList(userName,roleName,start,numbers);
	}
	@Override
	public Integer getUserCount(String userName, String roleName) {
		return userMapper.getUserCount(userName, roleName);
	}
	@Override
	public boolean addUser(User user) {
		boolean flag=false;
		try {
			if(userMapper.addUser(user)>=1)
				flag=true;
		}catch(RuntimeException e) {
			e.printStackTrace();
			throw new RuntimeException("添加错误"+e.getMessage());
		}
		return flag;
	}
	@Override
	public boolean modifyPasswd(String userCode, String userPassword,String newPassword) {
		boolean flag=false;
		String msg="";
		try {
			if(!StringUtils.isEmpty(userCode)&& null!=userPassword&&null!=newPassword) {
				if(userMapper.modifyPasswd(userCode, userPassword,newPassword)>0) {
					flag=true;
				}else
				{
					msg="修改失败";
				}
			}else
				msg="参数为空错误！";
		}catch(RuntimeException e) {
			throw new RuntimeException(msg+e);
		}
		return flag;
	}
	@Override
	public User getUserById(String id) {
		//字符串转换整型数据
		String msg="";
		Integer nid=null;
		User user=new User();
		try {
			if(!StringUtils.isEmpty(id)) {
				nid=Integer.parseInt(id);
				user=userMapper.getUserById(nid);
			}else
				msg="用户的id为空！";
			
		}catch(RuntimeException e) {
			throw new RuntimeException(msg+e);
		}
		return user;
	}
	@Override
	public boolean modifyUser(User user) {
		String msg="";
		boolean flag=false;
		try {
			if(null!=user) {
				if(userMapper.modifyUser(user)>0)
					flag=true;
			}
			
		}catch(RuntimeException e) {
			throw new RuntimeException(msg+e);
		}
		return flag;
	}
	@Override
	public boolean deleteUserById(String id) {
		boolean flag=false;
		Integer nid=null;
		String msg="";
		try {
			if(!StringUtils.isEmpty(id)) {
				nid=Integer.parseInt(id);
				if(userMapper.deleteUserById(nid)>0)
					flag=true;
			}else msg="参数为空！";
		}catch(RuntimeException e) {
			throw new RuntimeException(msg+e);
		}
		return flag;
	}

}
