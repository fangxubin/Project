package com.livestock.action;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.livestock.model.PageBean;
import com.livestock.model.TbByproduct;
import com.livestock.service.ByproductService;
import com.opensymphony.xwork2.ActionSupport;

import net.sf.json.JSONObject;
@SuppressWarnings("unchecked")
public class ByproductAction extends ActionSupport {
	private static final long serialVersionUID = 7610840439093612731L;
	
	private PageBean pageBean; //封装了分页信息和数据内容的pageBean    
	private int page = 1;
	public static final int PAGESIZE=5;
	private ByproductService byproductService;

	public void setByproductService(ByproductService byproductService) {
		this.byproductService = byproductService;
	}
	
	public PageBean getPageBean() {
		return pageBean;
	}

	public void setPageBean(PageBean pageBean) {
		this.pageBean = pageBean;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	/**
	 * 查询所有副产品，分页罗列出来
	 * @return
	 */
	public String list(){
		final String hql="from TbByproduct";
		Object[] parameters=null;
		pageBean = byproductService.queryAllPage(hql,parameters,PAGESIZE, page);
		List<TbByproduct> byproducts = pageBean.getList();
		ServletActionContext.getRequest().setAttribute("byproducts",byproducts );
		ServletActionContext.getRequest().setAttribute("pageBean",pageBean );
		
		return SUCCESS;
	}

	
	/**
	 * 根据名称查找副产品
	 * @return
	 */
	
	public String findByName() {
		String byproductName = ServletActionContext.getRequest().getParameter("byproductName");
		final String hql="from TbByproduct tb where tb.byproductName=?";
		Object[] parameters={byproductName};
		pageBean = byproductService.queryAllPage(hql,parameters,PAGESIZE, page);
		List<TbByproduct> byproducts = pageBean.getList();
		ServletActionContext.getRequest().setAttribute("byproducts",byproducts );
		ServletActionContext.getRequest().setAttribute("pageBean",pageBean);
		return SUCCESS;
	}

	/**
	 * 根据id查找
	 * @return
	 */
	public String findById() {
			int byproductId = Integer.parseInt(ServletActionContext.getRequest().getParameter("updateId"));
			TbByproduct byproducts = byproductService.findById(byproductId);
			ServletActionContext.getRequest().setAttribute("byproducts", byproducts);
		
		return SUCCESS;
	}


	/**
	 * 更新副产品
	 * 
	 * @return
	 */
	public String update() {
		try {
			String byproductName = ServletActionContext.getRequest().getParameter("byproname");
			int byproductQuantity = Integer.parseInt(ServletActionContext.getRequest().getParameter("bypronum"));
			int byproductId = Integer.parseInt(ServletActionContext.getRequest().getParameter("updateId"));
			System.out.println(byproductName+"--"+byproductQuantity+"--"+byproductId);
			TbByproduct tb = byproductService.findById(byproductId);
			tb.setByproductName(byproductName);
			tb.setByproductQuantity(byproductQuantity);
			byproductService.update(tb);
			// 调用Action中的遍历方法遍历副产品并显示在list.jsp页面
			//this.list();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}

	/**
	 * 删除副产品
	 */
	// 这里若有返回值，则不会刷新页面
	public void delete() {
		try {
			int byproductId = Integer.parseInt(ServletActionContext.getRequest().getParameter("deleteId"));
			byproductService.deleteById(byproductId);
			Map<String, Object> msg = new HashMap<>();
			msg.put("msg", 1);
			JSONObject json = JSONObject.fromObject(msg);
			ServletActionContext.getResponse().getWriter().print(json);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 批量删除
	 */
	public void deletePart() {
		try {
			String flag = ServletActionContext.getRequest().getParameter("flag");
			HttpServletResponse resp= ServletActionContext.getResponse();
			if (flag.equals("0")) {
				byproductService.delete(byproductService.find());
				resp.getWriter().print('0');
			}else if(flag.equals("1")) {
				String[] num = ServletActionContext.getRequest().getParameterValues("num");
				for(String id:num){
					byproductService.deleteById(Integer.parseInt(id));
				}
				resp.getWriter().print('1');
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 添加副产品
	 * @return
	 */
	public String addByName() {
		String result="";
		try {
			String byproductName = ServletActionContext.getRequest().getParameter("byproname");
			int byproductQuantity = Integer.parseInt(ServletActionContext.getRequest().getParameter("bypronum"));
			TbByproduct tb = new TbByproduct();
			tb.setByproductName(byproductName);
			tb.setByproductQuantity(byproductQuantity);
			Date date = new Date();
			tb.setStaticsTime(date);
			boolean flag = byproductService.add(tb);
			if(flag){
				result = this.list();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
