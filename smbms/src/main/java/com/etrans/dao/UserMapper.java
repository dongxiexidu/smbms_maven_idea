package com.etrans.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.etrans.domain.User;

public interface UserMapper {
   //删除用户
   public Integer deleteUserById(@Param("id") Integer id);
	
   public User checkLogin(@Param("userCode") String userCode, @Param("userPassword") String userPassword);
   //查询用户信息
   public List<User> getUserList(@Param("userName") String userName, @Param("roleName") String roleName, @Param("start") Integer start, @Param("numbers") Integer numbers);
   public Integer getUserCount(@Param("userName") String userName, @Param("roleName") String roleName);
   //添加用户
   public Integer addUser(User user);
   //修改密码
   public Integer modifyPasswd(@Param("userCode") String userCode,
                               @Param("userPassword") String userPassword,
                               @Param("newPassword") String newPassword);
   //修改用户信息
   public Integer modifyUser(User user);
   //根据用户的id获取用户信息
   public User getUserById(@Param("id") Integer id);
}
