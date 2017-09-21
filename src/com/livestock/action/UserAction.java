package com.livestock.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.livestock.model.TbUser;
import com.livestock.service.UserService;
import com.opensymphony.xwork2.ActionSupport;

import net.sf.json.JSONObject;

public class UserAction extends ActionSupport {
	private static final long serialVersionUID = -4200417978523849881L;
	
	private UserService userService;
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	//登录
	public String login() {
		try {
			String username = ServletActionContext.getRequest().getParameter("username");
			String password = ServletActionContext.getRequest().getParameter("password");
			int role= Integer.parseInt(ServletActionContext.getRequest().getParameter("role"));
			
			if (userService.validateReg(username, password)) {
				if(userService.validateLogin(username, password, role)){
					//ServletActionContext.getRequest().getSession().setAttribute("tip", "登录成功!");
					return "login";
				}else{
					ServletActionContext.getRequest().getSession().setAttribute("tip", "用户名或密码有误！");
				}
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}	
	
	//注册
	public String register(){
		try{
			String agree = ServletActionContext.getRequest().getParameter("agree");
			String regname=ServletActionContext.getRequest().getParameter("registername");
			String regpwd=ServletActionContext.getRequest().getParameter("password1");
			int role=0;
			
			if(agree.equals("agree")){
				if(userService.validateReg(regname, regpwd)){
					if(!userService.validateUserExists(regname)){
						if(userService.validateRegister(regname, regpwd, role)){
							ServletActionContext.getRequest().getSession().setAttribute("tip", "注册成功！");
							return SUCCESS;
						}
					}else{
						ServletActionContext.getRequest().getSession().setAttribute("tip", "用户名已存在！");
					}
				}else{
					ServletActionContext.getRequest().getSession().setAttribute("tip", "用户名或密码格式有误！");
				}
			}else{
				ServletActionContext.getRequest().getSession().setAttribute("tip", "请阅读并同意用户协议！");
			}
		}catch(Exception e){
			e.printStackTrace();
			//ServletActionContext.getRequest().setAttribute("tip", "注册失败！");
		}
		return "register";
	}
	//退出
	public String logout() {
		try{
			ServletActionContext.getRequest().getSession().setAttribute("user", null);
			ServletActionContext.getRequest().getSession().invalidate();
		}catch(Exception e){
			e.printStackTrace();
		}
		return SUCCESS;
	}
	//修改密码
	public String changePwd() {
		try {
			String old_pwd = ServletActionContext.getRequest().getParameter("old_pwd");
			String new_pwd = ServletActionContext.getRequest().getParameter("new_pwd");
			TbUser user = (TbUser) ServletActionContext.getRequest().getSession().getAttribute("user");
			
			if (old_pwd.equals(user.getUserPwd())) {
				userService.updatePassword(user, new_pwd);
				ServletActionContext.getRequest().getSession().setAttribute("user", null);
				ServletActionContext.getRequest().getSession().invalidate();
				ServletActionContext.getRequest().getSession().setAttribute("tip", "密码修改成功，请重新登录！");
				return SUCCESS;
			} 
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "false";
	}
	
	//判断用户是否登录
	public void isLogin(){
		Map<String,Object> msg = new HashMap<>();
		HttpServletResponse resp = ServletActionContext.getResponse();
		resp.setContentType("application/json;charset=UTF-8");
		try{
			if(ServletActionContext.getRequest().getSession()==null){
				msg.put("msg", 0);
				JSONObject json = JSONObject.fromObject(msg);
				resp.getWriter().print(json);
			}else{
				msg.put("msg", 1);
				JSONObject json = JSONObject.fromObject(msg);
				resp.getWriter().print(json);
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
