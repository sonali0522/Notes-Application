package com.org.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.org.dto.Notes;
import com.org.dto.User;

public class NotesDao {
	
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("Sonali");
    EntityManager em = emf.createEntityManager();
    EntityTransaction et = em.getTransaction();  
	
    public Notes fetchNoteById(int id)
    {
  	  Notes note = em.find(Notes.class, id);
  	  return note;  
    }
    public List<Notes> fetchAllNotes()
    {
  	  Query query = em.createQuery("SELECT n FROM Notes n");
  	  List<Notes> list = query.getResultList();
  	  return list;
    }
}