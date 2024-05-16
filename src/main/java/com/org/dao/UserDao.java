package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.org.dto.User;

public class UserDao {
	
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Sonali");
    EntityManager em = emf.createEntityManager();
    EntityTransaction et = em.getTransaction();  
	
   public void saveAndUpdateUser(User user) {
	   
		et.begin();
		em.merge(user);
		et.commit();
	}
	
    public User fetchUserByEmailAndPassword(String email, String password) {
    	
	    Query query = em.createQuery("SELECT u FROM User u WHERE u.email=?1 AND u.password=?2");
	    query.setParameter(1, email);
	    query.setParameter(2, password);
	    
	    List<User> list = query.getResultList();
	
	    if(list.isEmpty())
		   return null;
	  
	    return list.get(0);
    }	  

    public User fetchUserById(int id) {
    	
	    return em.find(User.class, id);
	}
    
    public List<User> fetchAllUsers() {
       
  	  Query query = em.createQuery("SELECT u FROM User u");
  	  List<User> list = query.getResultList();
  	   return list;
    }

    public void DeleteUser(int id) {
    	
	    User user = em.find(User.class, id);
	    et.begin();
	    em.remove(user);
	    et.commit();
	}

    public void updatePassword(int id,String password) {
    	
	    User user = em.find(User.class, id);
	    user.setPassword(password);
	    et.begin();
	    em.merge(user); 
	    et.commit();
	}
}