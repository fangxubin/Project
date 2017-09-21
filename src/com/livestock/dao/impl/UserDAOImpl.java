/**
 * 
 */
package com.livestock.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.livestock.dao.UserDAO;
import com.livestock.model.TbUser;

/**
 * @author Administrator
 *
 */
@SuppressWarnings("unchecked")
public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {
	
	/**
	 * 按角色查找
	 */
	@Override
	public List<TbUser> findByRole(Integer userRole) {
		Session session = getSessionFactory().openSession();
        session.beginTransaction();
        List<TbUser> user= (List<TbUser>) session.createQuery("from TbUser where userRole=:userRole").setInteger("userRole", userRole).list();
        session.getTransaction().commit();
        session.close();
		return user;
	}
	
	@Override
	public TbUser findByName(String userName) {
		TbUser result;
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		result = (TbUser) session.createQuery("from TbUser where userName=:userName").setString("userName", userName).uniqueResult();
		session.getTransaction().commit();
		session.close();
		return result;
	}
	/**
	 * 查找所有用戶
	 */
	@Override
	public List<TbUser> find() {
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		List<TbUser> result = session.createQuery("from TbUser").list();		
		session.getTransaction().commit();
		session.close();
		return result;
	}
	
	@Override
	public void deleteByRole(Integer userRole) {
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		session.createQuery("delete TbUser where userRole=:userRole").setInteger("userRole", userRole).executeUpdate();
		session.getTransaction().commit();
		session.close();
	};
	
	

	@Override
	public void add(TbUser user) {
		Session session = getSessionFactory().openSession();
	    session.beginTransaction();
	    session.saveOrUpdate(user);
	    session.getTransaction().commit();
	    session.close();
	}

	@Override
	public void delete(TbUser user) {
		Session session = getSessionFactory().openSession();
        session.beginTransaction();
        session.delete(user);
        session.getTransaction().commit();
        session.close();
	}
	
	
	@Override
	public void updatePassword(TbUser user,String newPwd) {
		user.setUserPwd(newPwd);
		Session session = getSessionFactory().openSession();
		session.beginTransaction();
		session.update(user);
		session.getTransaction().commit();
		session.close();
	}
}
