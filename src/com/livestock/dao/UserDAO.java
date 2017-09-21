/**
 * 
 */
package com.livestock.dao;

import java.util.List;

import com.livestock.model.TbUser;

/**
 * @author Administrator
 *
 */
public interface UserDAO{
	//查找用戶
	/**
	 * 按角色查找
	 * @param userRole
	 * @return
	 */
	public abstract List<TbUser> findByRole(Integer userRole);
	/**
	 * 按名字查找
	 * @param userName
	 * @return
	 */
	public abstract TbUser findByName(String userName);
	
	/**
	 * 
	 * @return 返回所有用戶
	 */
	public abstract List<TbUser> find();
	
	
	/**
	 * 按角色删除
	 * @param userRole
	 * @return
	 */
	public abstract void deleteByRole(Integer userRole);

	
	
	
	/**
	 * 添加用户
	 * @param user
	 */
	public abstract void add(TbUser user);
	/**
	 * 删除用户
	 * @param user
	 */
	public abstract void delete(TbUser user);
	
	/**
	 * 修改密码
	 */
	public abstract void updatePassword(TbUser user,String newPwd);
}
