package com.livestock.service.impl;

import java.sql.Date;
import java.util.List;

import com.livestock.dao.ByproductDAO;
import com.livestock.model.PageBean;
import com.livestock.model.TbByproduct;
import com.livestock.service.ByproductService;
public class ByproductServiceImpl implements ByproductService {
	private ByproductDAO byproductDao;

	public void setByproductDao(ByproductDAO byproductDao) {
		this.byproductDao = byproductDao;
	}
	
	/**   
	 * 分页查询     
	 * @param pageSize  每页显示多少记录   
	 * @param currentPage 当前页   
	 * @return 封装了分页信息的bean   
	 */    
	public PageBean queryAllPage(String hql,Object[] parameters,int pageSize, int page) {
		//final String hql = "from TbByproduct"; //查询语句    
		//final String hql = "from TbByproduct";
		/*if(parameters!=null && parameters.length>0){
			for(int i=0;i<parameters.length;i++){
				System.out.println(parameters[i]);	
			}
		}*/
		int allRow = byproductDao.getAllRowCount(hql,parameters);  //总记录数    
		int totalPage = PageBean.countTotalPage(pageSize, allRow); //总页数    
		final int offset = PageBean.countOffset(pageSize, page); //当前页开始记录    
		final int length = pageSize; // 每页记录数    
		final int currentPage = PageBean.countCurrentPage(page); // 当前页 
		List<TbByproduct> list = byproductDao.queryAllPage(hql,parameters,offset, length);    
		//把分页信息保存到Bean当中    
		PageBean pageBean  = new PageBean();    
		pageBean.setPageSize(pageSize);    
		pageBean.setCurrentPage(currentPage);    
		pageBean.setAllRow(allRow);    
		pageBean.setTotalPage(totalPage);    
		pageBean.setList(list);    
		pageBean.init();    
		return pageBean;    
	}

	@Override
	public TbByproduct findById(int byproductId) {
		return byproductDao.findById(byproductId);
	}

	@Override
	public List<TbByproduct> findByName(String byproductName) {
		return byproductDao.findByName(byproductName);
	}

	@Override
	public List<TbByproduct> findByTime(Date staticsTime) {
		return byproductDao.findByTime(staticsTime);
	}

	@Override
	public List<TbByproduct> find() {
		return byproductDao.find();
	}

	@Override
	public void deleteById(int byproductId) {
		 byproductDao.deleteById(byproductId);
	}


	@Override
	public void delete(List<TbByproduct> list) {
		 byproductDao.delete(list);
	}

	@Override
	public boolean update(TbByproduct tb) {
		return byproductDao.update(tb);
	}

	@Override
	public boolean add(TbByproduct tb) {
		return byproductDao.add(tb);
	}

	@Override
	public int getAllRowCount(String hql, Object[] parameters) {
		return byproductDao.getAllRowCount(hql, parameters);
	}

	
}
