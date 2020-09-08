package com.etrans.service;

import java.util.List;

import com.etrans.domain.User;

public interface UserService {
	public User checkLogin(String userCode, String userPassword);
	//用户查询接口
	public List<User> getUserList(String userName, String roleName, Integer start, Integer numbers);
	public Integer getUserCount(String userName, String roleName);
	public boolean addUser(User user);
	//修改密码
	public boolean modifyPasswd(String userCode, String userPassword, String newPassword);
	//根据id获取用户信息
	public User getUserById(String id);
	//修改用户信息
	public boolean modifyUser(User user);
	//删除用户
	public boolean deleteUserById(String id);
}
