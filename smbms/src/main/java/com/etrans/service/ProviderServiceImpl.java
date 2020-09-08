package com.etrans.service;

import java.util.ArrayList;
import java.util.List;

import javax.management.RuntimeErrorException;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.etrans.dao.ProviderMapper;
import com.etrans.domain.Provider;
@Service
public class ProviderServiceImpl implements ProviderService {
	//引入Dao层的资源
	@Autowired
	ProviderMapper providerDao;
	@Override
	public List<Provider> getProviderList(String proName,Integer pageIndex,Integer pageSize) {
		List<Provider> providers=new ArrayList<Provider>();
		try {
			providers=providerDao.getProviderList(proName,pageIndex,pageSize);
		}catch(RuntimeException e) {
			e.printStackTrace();
			throw new RuntimeException("查询异常"+e.toString());
		}
		return providers;
	}
	@Override
	public Integer getProviderCount(String proName) {
		Integer num=0;
		try {
			num=providerDao.getProviderCount(proName);
		}catch(RuntimeException e) {
			e.printStackTrace();
			throw new RuntimeException("获取总数异常"+e.toString());
		}
		return num;
	}
	@Override
	public boolean providerAdd(Provider provider) {
		boolean flag=false;
		try {
			if(providerDao.providerAdd(provider)>=1) {
				flag=true;
			}
		}catch(RuntimeException e) {
			e.printStackTrace();
			throw new RuntimeException("添加供应商错误"+e.getMessage());
		}
		return flag;
	}
	@Override
	public boolean modifyProvider(Provider provider) {
		String msg="";
		boolean flag=false;
		try {
			if(null!=provider) {
				if(providerDao.modifyProvider(provider)>0)
					flag=true;
			}
			
		}catch(RuntimeException e) {
			throw new RuntimeException(msg+e);
		}
		return flag;
	}
	@Override
	public boolean deleteProviderById(String id) {
		boolean flag=false;
		Integer nid=null;
		String msg="";
		try {
			if(!StringUtils.isEmpty(id)) {
				nid=Integer.parseInt(id);
				if(providerDao.deleteProviderById(nid)>0)
					flag=true;
			}else msg="参数为空！";
		}catch(RuntimeException e) {
			throw new RuntimeException(msg+e);
		}
		return flag;
	}
	@Override
	public Provider getProvider(String id) {
		String msg="";
		Integer nid=null;
		Provider provider=new Provider();
		try {
			if(!StringUtils.isEmpty(id)) {
				nid=Integer.parseInt(id);
				provider=providerDao.getProvider(nid);
			}else
				msg="用户的id为空！";
		}catch(RuntimeException e) {
			throw new RuntimeException(msg+e);
		}
		return provider;
	}

}
