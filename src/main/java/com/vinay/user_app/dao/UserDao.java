package com.vinay.user_app.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.vinay.user_app.dto.User;

@Repository
public class UserDao {
	@Autowired
	private EntityManager manager;
	
	public User saveUser(User u) {
		EntityTransaction transaction = manager.getTransaction();
		manager.persist(u);
		transaction.begin();
		transaction.commit();
		return u;
	}
	
	public User verifyByPhone(long phone,String password) {
		String qry = "select u from User u where u.phone=?1 and u.password=?2";
		Query q = manager.createQuery(qry);
		q.setParameter(1, phone);
		q.setParameter(2, password);
		
		try {
			return (User)q.getSingleResult();
		}catch(NoResultException e) {
			return null;
		}
	}
	
	public User updateUser(User u) {
		EntityTransaction transaction = manager.getTransaction();
		manager.merge(u);
		transaction.begin();
		transaction.commit();
		return u;
	}
}
