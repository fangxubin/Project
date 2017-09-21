package com.livestock.service;

import java.sql.Date;
import java.util.List;

import com.livestock.model.PageBean;
import com.livestock.model.TbByproduct;

public interface ByproductService {
	//查询操作
	/**
	 * 根据ID查询
	 */
	public abstract TbByproduct findById(int byproductId);
	
	/**
	 * 根据副产品名字查询
	 */
	public abstract List<TbByproduct> findByName(String byproductName);
	/**
	 * 根据副产品统计时间查询
	 */
	public abstract List<TbByproduct> findByTime(Date staticsTime);
	/**
	 * 查询所有数据
	 */
	public abstract List<TbByproduct> find();
	
	
	//删除操作
	/**
	 * 根据id删除
	 */
	public abstract void deleteById(int byproductId);
	
	/**
	 * 删除所有
	 * @param list
	 */
	public abstract void delete(List<TbByproduct> list);
	
	
	//修改操作
	/**
	 * 修改数据
	 */
	public abstract boolean update(TbByproduct tb);
	
	
	//添加操作
	/**
	 * 添加副产品
	 */
	public abstract boolean add(TbByproduct tb);

	public PageBean queryAllPage(String hql,Object[] parameters,int pageSize, int page);
	
	public int getAllRowCount(String hql,Object[] parameters);
}
