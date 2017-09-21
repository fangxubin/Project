package com.livestock.action;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts2.ServletActionContext;
import com.livestock.util.RandomValidateCode;
import com.opensymphony.xwork2.ActionSupport;

public class ValidateCodeAction extends ActionSupport {
	private static final long serialVersionUID = -3519491234627076284L;
	
	/**
	 * /livestock01/src/com/livestock/util/RandomValidateCode.java
     * 获取注册验证码(图片)
     */
	public void getValidateCode(){
		HttpServletRequest req = ServletActionContext.getRequest();
        HttpServletResponse resp = ServletActionContext.getResponse();
        
        resp.setContentType("image/jpeg");//设置相应类型,告诉浏览器输出的内容为图片
        resp.setHeader("Pragma", "No-cache");//设置响应头信息，告诉浏览器不要缓存此内容
        resp.setHeader("Cache-Control", "no-cache");
        resp.setDateHeader("Expire", 0);
        RandomValidateCode randomValidateCode = new RandomValidateCode();
        try {
            randomValidateCode.getRandcode(req, resp);//输出图片方法
        } catch (Exception e) {
            e.printStackTrace();
        }
	}
	
	public void checkValidateCode() throws IOException {
        HttpServletRequest req = ServletActionContext.getRequest();
        //获取前台输入的验证码
        String code = req.getParameter("code");
        //获取后台验证码
        String code1 = req.getSession().getAttribute("code").toString();
        boolean result = code.equalsIgnoreCase(code1);
        /*System.out.println("code="+code);
        System.out.println("code1="+code1);
        System.out.println(result);*/
        //json返回
        /*Map<String, Object> msg = new HashMap<>();
		msg.put("msg", (result?"0":"1"));
		JSONObject json = JSONObject.fromObject(msg);
		ServletActionContext.getResponse().getWriter().print(json);*/
        
        //普通字符串返回
        HttpServletResponse resp = ServletActionContext.getResponse();
        resp.setContentType("text/html;charset=UTF-8");
        resp.getWriter().print(result?"0":"1");
    }
}
