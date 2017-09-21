package com.livestock.service;

import java.util.List;

import com.livestock.model.TbUser;

public interface UserService {
	/**
	 * 验证用户是否存在
	 * @param username
	 * @return
	 */
	public boolean validateUserExists(String username);
		
	
	/**
	 * 查找全部用户
	 * @return
	 */
	public abstract List<TbUser> findUsers();
	
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
	public abstract void updatePassword(TbUser user,String newPassword);
	
	/**
	 * 验证用户名和密码格式是否正确
	 * @param username
	 * @param password
	 * @return
	 */
	public boolean validateReg(String username,String password);
	
	/**
	 * 登录验证
	 * @param username
	 * @param password
	 * @param role
	 * @return
	 */
	public boolean validateLogin(String username,String password,int role);
	
	/**
	 * 验证注册
	 * @param username
	 * @param password
	 * @return
	 */
	public boolean validateRegister(String username,String password,int role);
}
