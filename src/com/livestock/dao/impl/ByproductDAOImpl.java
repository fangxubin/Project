/**
 * 
 */
package com.livestock.dao.impl;

import java.sql.Date;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.livestock.dao.ByproductDAO;
import com.livestock.model.TbByproduct;

/**
 * @author Administrator
 *
 */
@SuppressWarnings("unchecked")
public class ByproductDAOImpl extends HibernateDaoSupport implements ByproductDAO {
	//查询操作
	@Override
	public TbByproduct findById(int byproductId) {
		TbByproduct result;
		String hql = "from TbByproduct where byproductId=:byproductId";
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		result = (TbByproduct) session.createQuery(hql).setInteger("byproductId", byproductId).uniqueResult();
		session.getTransaction().commit();
		session.close();
		return result;
	}
	
	@Override
	public List<TbByproduct> findByName(String byproductName) {
		List<TbByproduct> result;
		String hql = "from TbByproduct where byproductName=:byproductName";
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		result = (List<TbByproduct>) session.createQuery(hql).setString("byproductName", byproductName).list();
		session.getTransaction().commit();
		session.close();
		return result;
	}

	@Override
	public List<TbByproduct> findByTime(Date staticsTime) {
		List<TbByproduct> result;
		String hql="from TbByproduct where staticsTime=:staticsTime";
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		result = (List<TbByproduct>) session.createQuery(hql).setDate("staticsTime", staticsTime).list();
		session.getTransaction().commit();
		session.close();
		return result;
	}
	
	@Override
	public List<TbByproduct> find() {
		List<TbByproduct> result;
		String hql = "from TbByproduct";
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		result = (List<TbByproduct>) session.createQuery(hql).list();
		session.getTransaction().commit();
		session.close();
		return result;
	}

	
	//删除操作
	@Override
	public void deleteById(int byproductId) {
		String hql="delete TbByproduct where byproductId=:byproductId";
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		session.createQuery(hql).setInteger("byproductId", byproductId).executeUpdate();
		session.getTransaction().commit();
		session.close();
	}
	
	@Override
	public void delete(List<TbByproduct> list) {
		String hql="delete TbByproduct where byproductName=:byproductName";
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		for(TbByproduct x:list){
			session.createQuery(hql).setString("byproductName", x.getByproductName()).executeUpdate();
		}
		session.getTransaction().commit();
		session.close();
	}
	
	
	//修改操作
	@Override
	public boolean update(TbByproduct tb) {
		boolean result=false;
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		session.update(tb);
		result=true;
		session.getTransaction().commit();
		session.close();
		return result;
	}

	
	//添加操作
	@Override
	public boolean add(TbByproduct tb) {
		boolean result=false;
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		session.save(tb);
		result=true;
		session.getTransaction().commit();
		session.close();
		return result;
	}

	
	//分页查询
	/**   
	 * 查询所有的记录数   
	 * @param hql 查询条件   
	 * @return 总记录数   
	 */    
	public int getAllRowCount(String hql,Object[] parameters) {   
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		Query query = session.createQuery(hql);
		if(parameters!=null && parameters.length>0){
			for(int i=0;i<parameters.length;i++){
				query.setParameter(i, parameters[i]);	
			}
		}
		List<TbByproduct> list = query.list();
		session.getTransaction().commit();
		session.close();
		return list.size();
	}    
	/**   
	 * 分页查询   
	 * @param hql  查询条件   
	 * @param offset  开始记录   
	 * @param length  一次查询几条记录   
	 * @return 查询的记录集合   
	 */    
	public List<TbByproduct> queryAllPage(final String hql,Object[] parameters,final int offset, final int length) {    
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		Query query = session.createQuery(hql); 
		if(parameters!=null && parameters.length>0){
			for(int i=0;i<parameters.length;i++){
				query.setParameter(i, parameters[i]);	
			}
		}
		query.setFirstResult(offset);    
		query.setMaxResults(length);    
		List<TbByproduct> list = query.list();    
		//System.out.println(list.size()); 
		session.getTransaction().commit();
		session.close();  
		return list;    
	}    
	
}
