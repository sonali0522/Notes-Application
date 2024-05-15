package com.org.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class NotesDao {
	private final EntityManagerFactory emf = Persistence.createEntityManagerFactory("Sonali");

	public List<NotesDao> fetchNotesById(int id) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();

        try {
            Query query = em.createQuery("SELECT n FROM Note n WHERE n.id = :id");
            query.setParameter("id", id);
            List<NotesDao> notes = query.getResultList();
            return notes;
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        } finally {
            em.close();
        }
    }
	
	public List<NotesDao> fetchAllNotes() {
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();

        try {
            Query query = em.createQuery("SELECT n FROM Note n");
            List<NotesDao> notes = query.getResultList();
            return notes;
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList<>();
        } finally {
            em.close();
        }
    }
	
	
}
