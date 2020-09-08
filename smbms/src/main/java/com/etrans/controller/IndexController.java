package com.etrans.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.etrans.domain.User;

@Controller
public class IndexController{
	//用户登录处理界面
	@RequestMapping("/userLoginGo")
	public ModelAndView userLoginGo(User user,HttpSession session) {
		ModelAndView mv =new ModelAndView();
		mv.addObject("user",user);
		session.setAttribute("userName","ddd");
		mv.setViewName("success");
		return mv;
	}
	//用户登录界面
	@RequestMapping("/userLogin")
	public String userLogin() {
		return "userLogin";
	}
	@RequestMapping("/input")
	public String input() {
		return "input";
	}

	//@RequestMapping({"/index","/","/my"})
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public String index(@RequestParam(value="username",required=false) String username,Model md) {
		System.out.println("Hello SpringMVC");
		md.addAttribute("username",username);
		return "index";
	}
	@RequestMapping("/welcome")
	public ModelAndView welcome(String username) {
		ModelAndView mv=new ModelAndView();
		mv.addObject("username",username);
		mv.setViewName("welcome");
		return mv;
	}
}
