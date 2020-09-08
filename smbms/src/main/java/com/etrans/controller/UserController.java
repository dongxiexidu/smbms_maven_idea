package com.etrans.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.etrans.domain.User;
import com.etrans.service.UserService;
import com.etrans.util.Constants;
import com.etrans.util.PageHelper;
import com.etrans.util.UploadHelper;


@Controller
public class UserController {
	@Resource
	UserService userService;
	//更据id删除用户信息
	@RequestMapping("deleteUserById")
	public String deleteUserById(String id,Model md) {
		String msg="";
		if(userService.deleteUserById(id)) {
			msg="删除用户成功！";
		}else
			msg="删除用户失败！";
		md.addAttribute("msg", msg);
		return "redirect:getUserList";
	}
	//添加修改用户的执行路由信息
	@RequestMapping("/modifyUserGo")
	public String modifyUserGo(User user,HttpSession session) {
		Integer uid=((User)session.getAttribute(Constants.USER_SESSION)).getId();
		if(null!=user) {
			user.setModifyBy(uid);
			user.setModifyDate(new Date());
			userService.modifyUser(user);
		}
		return "redirect:getUserList";
	}
	//添加修改用户的界面路由
	@RequestMapping("/modifyUser")
	public String modifyUser(String id,Model md) {
		User user=new User();
		user=userService.getUserById(id);
		md.addAttribute("user", user);
		return "modifyUser";
	}
	//修改密码实现方法
	@RequestMapping("/modifyPasswordGo")
	public String modifyPasswordGo(String userCode,String userPassword,String newPassword,Model md) {
		String msg="";
		if(userService.modifyPasswd(userCode, userPassword, newPassword))
			msg="修改密码成功！";
		else
			msg="修改密码失败！";
		md.addAttribute("msg",msg);
		return "modifyPasswordFinish";
	}
	//添加用户打开修改密码的界面
	@RequestMapping("/modifyPasswd")
	public String modifyPasswd() {
		return "modifyPasswd";
	}
	//添加用户处理方法
	@RequestMapping("addUserGo")
	public String addUserGo(User user,HttpSession session,HttpServletRequest request,
			@RequestParam(value ="midPicPath", required = false) MultipartFile attach,
			@RequestParam(value ="mworkPicPath", required = false) MultipartFile attach1,
			Model md) {
		String strIdPicPath=null;
		String strWorkPicPath=null;
		Map<String,String> msgMap=new HashMap<String,String>();
		String savePath= request.getSession().getServletContext().getRealPath("uploads"); 
		msgMap=UploadHelper.saveFile(savePath, attach);
		if(msgMap.get("flag")=="fail") {
			md.addAttribute("error",msgMap.get("msg"));
			return "redirect:addUser";
		}else {
			strIdPicPath=msgMap.get("url");
		}
		msgMap=UploadHelper.saveFile(savePath, attach1);
		if(msgMap.get("flag")=="fail") {
			md.addAttribute("error",msgMap.get("msg"));
			return "redirect:addUser";
		}else {
			strWorkPicPath=msgMap.get("url");
		}
		User user1=new User();
		user1=user;
		Integer uid=null;
		uid=((User) session.getAttribute(Constants.USER_SESSION)).getId();
		if(null!=uid) {
			user1.setCreatedBy(uid);
			user1.setIdPicPath(strIdPicPath);
			user1.setWorkPicPath(strWorkPicPath);
		    if(userService.addUser(user1))
		    	return "redirect:getUserList";
		    else {
		    	md.addAttribute("error","您还没有登录，请登录！");
		    	return "redirect:addUser";
		    }
		}
		else
			return "redirect:login";
	}
	//添加用户界面
	@RequestMapping("addUser")
	public String addUser() {
		return "addUser";
	}
	//请求登录界面
	@RequestMapping("/login")
	public String login() {
		return "login";
	}
	//退出界面
	@RequestMapping("/logout")
	public String logout(HttpSession session){
		session.removeAttribute("user");
		return "login";
	}
	//请求处理程序
	@RequestMapping("/loginGo")
	public String loginGo(String userCode,String userPassword,Model md,HttpSession session) {
		User user=new User();
		user=userService.checkLogin(userCode, userPassword);
		if(null!=user) {
			md.addAttribute("user",user);
			session.setAttribute(Constants.USER_SESSION, user);
			return "frame";
		}else {
			//md.addAttribute("msg","用户名或密码错误！");
			throw new RuntimeException("用户名或密码错误！");
			//return "login";
		}
	}
	//异常处理
//	@ExceptionHandler(value= {RuntimeException.class})
//	public String handlerException(RuntimeException e,HttpServletRequest req) {
//		req.setAttribute("e", e);
//		return "error";
//	}
	@RequestMapping("/main")
	public String main(HttpSession session) {
		//检查是否登录
		if(session.getAttribute("user")==null) {
			return "redirect:login";
		}
		return "main";
	}
	//查询用户列表
	@RequestMapping("/getUserList")
	public String getUserList(String userName,String roleName,String pageIndex,Model md) {
		//设置页面容量
    	int pageSize = Constants.pageSize;
    	//当前页码
    	int currentPageNo = 1;
    	if(pageIndex != null){
    		try{
    			currentPageNo = Integer.valueOf(pageIndex);
    		}catch(NumberFormatException e){
    			return "redirect:/user/syserror.html";
    			//response.sendRedirect("syserror.jsp");
    		}
    	}
    	//总数量（表）
    	if(StringUtils.isEmpty(userName))
    		userName="";
    	if(StringUtils.isEmpty(roleName))
    		roleName="";
    	int totalCount	= userService.getUserCount(userName, roleName);
    	//总页数
    	PageHelper pages=new PageHelper();
    	pages.setCurrentPageNo(currentPageNo);
    	pages.setPageSize(pageSize);
    	pages.setTotalCount(totalCount);
    	int totalPageCount = pages.getTotalPageCount();
    	//控制首页和尾页
    	if(currentPageNo < 1){
    		currentPageNo = 1;
    	}else if(currentPageNo > totalPageCount){
    		currentPageNo = totalPageCount;
    	}
		if(StringUtils.isEmpty(userName)) {
			userName="";
		}
		List<User> users=userService.getUserList(userName,roleName,(currentPageNo-1)*pageSize,pageSize);
		md.addAttribute("userList", users);
		md.addAttribute("totalPageCount", totalPageCount);
		md.addAttribute("totalCount", totalCount);
		md.addAttribute("currentPageNo", currentPageNo);
		return "userList";
	}
	@RequestMapping("/viewUser")
	public String viewUser(String id,Model md) {
		User user=new User();
		user=userService.getUserById(id);
		md.addAttribute("user", user);
		return "viewUser";
	}
}
