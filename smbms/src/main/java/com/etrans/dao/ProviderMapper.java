package com.etrans.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.etrans.domain.Provider;

public interface ProviderMapper {
   public List<Provider> getProviderList(@Param("proName") String proName,
                                         @Param("pageIndex") Integer pageIndex,
                                         @Param("pageSize") Integer pageSize);
   //根据条件获取供应商的记录数
   public Integer getProviderCount(@Param("proName") String proName);
   //添加供应商
   public Integer providerAdd(Provider provider);
   //修改供应商
   public Integer modifyProvider(Provider provider);
   //从ID获取某一个供应商信息
   public Provider getProvider(@Param("id") Integer id);
   //删除供应商
   public Integer deleteProviderById(@Param("id") Integer id);
}
