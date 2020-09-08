package com.etrans.service;

import java.util.List;

import com.etrans.domain.Provider;

public interface ProviderService {
	public List<Provider> getProviderList(String proName, Integer pageIndex, Integer pageSize);
	//获取供应商的数量
	public Integer getProviderCount(String proName);
	//添加供应商
	public boolean providerAdd(Provider provider);
	//修改供应商信息
    public boolean modifyProvider(Provider provider);
    //删除供应商
    public boolean deleteProviderById(String id);
    //根据id获取供应商信息
    public Provider getProvider(String id);
}
