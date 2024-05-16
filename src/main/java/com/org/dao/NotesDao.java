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
	static	EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("Sonali");  
	static  EntityManager eManager =entityManagerFactory.createEntityManager();
	static	EntityTransaction entityTransaction=eManager.getTransaction();  

	
	public static Notes fetchNoteById(int id) {
		Notes note = eManager.find(Notes.class, id);
		return note;
		}
	
	public static  List<Notes> fetchAllNotes() {
		Query query = eManager.createQuery("SELECT s FROM Notes s");
		List list = query.getResultList();
		return list;
	}
}