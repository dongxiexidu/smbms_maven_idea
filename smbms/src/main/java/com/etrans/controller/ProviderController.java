package com.etrans.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.etrans.domain.Provider;
import com.etrans.domain.User;
import com.etrans.service.ProviderService;
import com.etrans.util.Constants;
import com.etrans.util.PageHelper;

@Controller
public class ProviderController {
   //引入业务层的资源
	@Autowired
	ProviderService proService;
	//添加供应商处理方法
	@RequestMapping("/providerAddGo")
	public String providerAddGo(Provider provider,HttpSession session) {
		Provider pro=new Provider();
		pro=provider;
		Integer uid=null;
		uid=((User) session.getAttribute(Constants.USER_SESSION)).getId();
		if(null!=uid) {
			pro.setCreatedBy(uid);
		    if(proService.providerAdd(pro))
		    	return "redirect:getProviders";
		    else
		    	return "redirect:providerAdd";
		}
		else
			return "redirect:login";
	}
	//添加供应商界面
	@RequestMapping("/providerAdd")
	public String providerAdd() {
		return "providerAdd";
	}
	@RequestMapping("/getProviders")
    public String getProviderList(String proName,Model md,String pageIndex) {
    	String strName="";
    	if(!StringUtils.isEmpty(proName)) {
    		strName=proName;
    	}
    	Integer currentPageNo=1;
    	Integer pageSize=Constants.pageSize;
    	if(!StringUtils.isEmpty(pageIndex)) {
    		currentPageNo=Integer.parseInt(pageIndex);
    	}
    	//根据条件获取总记录数
    	Integer totalCount=proService.getProviderCount(strName);
    	//计算可以分几页
    	PageHelper pages=new PageHelper();
    	pages.setCurrentPageNo(currentPageNo);
    	pages.setPageSize(pageSize);
    	pages.setTotalCount(totalCount);
    	int totalPageCount = pages.getTotalPageCount();
    	List<Provider> providers=proService.getProviderList(strName,(currentPageNo-1)*pageSize,pageSize);
    	md.addAttribute("totalPageCount", totalPageCount);
		md.addAttribute("totalCount", totalCount);
		md.addAttribute("currentPageNo", currentPageNo);
    	md.addAttribute("providers",providers);
    	return "providerList";
    }
	//添加修改界面
	@RequestMapping("/modifyProvider")
	public String modifyProvider(String id,Model md) {
		Provider provider=new Provider();
		provider=proService.getProvider(id);
		md.addAttribute("provider", provider);
		return "modifyProvider";
	}
	//修改供应商
	@RequestMapping("/modifyProviderGo")
	public String modifyProviderGo(Provider provider,HttpSession session) {
		Integer oid=((User)session.getAttribute(Constants.USER_SESSION)).getId();
		if(null!=provider) {
			provider.setModifyBy(oid);
			provider.setModifyDate(new Date());
			proService.modifyProvider(provider);
		}
		return "redirect:getProviders";
	}
	//从ID获取某一个供应商信息
	@RequestMapping("/viewProvider")
	public String viewProvider(String id,Model md) {
		Provider provider=new Provider();
		provider=proService.getProvider(id);
		md.addAttribute("provider", provider);
		return "viewProvider";
	}
	//删除供应商
	@RequestMapping("deleteProviderById")
	public String deleteProviderById(String id,Model md) {
		String msg="";
		if(proService.deleteProviderById(id)) {
			msg="删除订单成功！";
		}else
			msg="删除订单失败！";
		md.addAttribute("msg", msg);
		return "redirect:getProviders";
	}
}
