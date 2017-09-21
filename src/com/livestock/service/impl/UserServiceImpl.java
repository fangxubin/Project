package com.livestock.service.impl;

import java.util.List;
import java.util.regex.Pattern;

import org.apache.struts2.ServletActionContext;

import com.livestock.dao.UserDAO;
import com.livestock.model.TbUser;
import com.livestock.service.UserService;

public class UserServiceImpl implements UserService {
	private UserDAO userDao;
	
	public void setUserDao(UserDAO userDao) {
		this.userDao = userDao;
	}

	

	@Override
	public List<TbUser> findUsers() {
		return userDao.find();
	}

	@Override
	public List<TbUser> findByRole(Integer userRole) {
		return userDao.findByRole(userRole);
	}

	@Override
	public TbUser findByName(String userName) {
		return userDao.findByName(userName);
	}

	@Override
	public void deleteByRole(Integer userRole) {
		userDao.deleteByRole(userRole);
	}

	@Override
	public void add(TbUser user) {
		userDao.add(user);
	}

	@Override
	public void delete(TbUser user) {
		userDao.delete(user);
	}

	@Override
	public void updatePassword(TbUser user, String newPassword) {
		userDao.updatePassword(user, newPassword);
	}
	
	/**
	 * 验证正则表达式
	 */
	@Override
	public boolean validateReg(String username, String password) {
		String regName="^[A-Za-z\u4e00-\u9fa5]{1}([a-zA-Z0-9]|[._]|[\u4e00-\u9fa5]){3,20}$";
		//^[A-Za-z\u4e00-\u9fa5]{1}([a-zA-Z0-9]|[._]|[\u4e00-\u9fa5]){3,20}$
		//^[A-Za-z0-9_\u4e00-\u9fa5]{4,20}$
		String regPassword="^\\w{6,20}$";
		Pattern p1=Pattern.compile(regName);
		Pattern p2=Pattern.compile(regPassword);
		boolean flag = (p1.matcher(username).matches())&&(p2.matcher(password).matches());
		return flag;
	}
	
	/**
	 * 验证用户是否已存在
	 */
	@Override
	public boolean validateUserExists(String username) {
		TbUser user = userDao.findByName(username);
		if(user!=null){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 验证用户登录
	 */
	@Override
	public boolean validateLogin(String username, String password, int role) {
		TbUser user = userDao.findByName(username);
		if(user!=null){
			boolean flag = user.getUserPwd().equals(password)&&user.getUserRole().equals(role);
			if(flag){
				//将user存入session中
				ServletActionContext.getRequest().getSession().setAttribute("user", user);
				return true;
			}
		}
		return false;
	}
	
	/**
	 * 验证注册
	 */
	@Override
	public boolean validateRegister(String regname, String regpwd,int role) {
		TbUser user=new TbUser();
		user.setUserName(regname);
		user.setUserPwd(regpwd);
		user.setUserRole(role);
		userDao.add(user);
		return true;
	}
}
