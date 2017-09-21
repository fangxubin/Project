package com.livestock.dao;

import java.sql.Date;
import java.util.List;

import com.livestock.model.TbByproduct;

public interface ByproductDAO {
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
	
	
	
	//分页查询
	/**   
	 * 分页查询   
	 * @param hql  查询条件   
	 * @param offset  开始记录   
	 * @param length  一次查询几条记录   
	 * @return 查询的记录集合   
	 */    
	public List<TbByproduct> queryAllPage(final String hql,Object[] parameters,final int offset,final int length);    
	/**   
	 * 查询所有的记录数   
	 * @param hql 查询条件   
	 * @return 总记录数   
	 */    
	public int getAllRowCount(String hql,Object[] parameters);    
	
	
}
