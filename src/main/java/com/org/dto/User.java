package com.org.dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class User {
	    
	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
		private  int id;
	    
	    @Column(nullable = false)
		private String name; 
	    	    
		private int age; 
		
		@Column(unique = true)
		private String email; 
		private String password; 
		
		@Column(unique = true)
		private long mobile;
		
		@OneToMany(cascade = CascadeType.ALL, mappedBy = "user", fetch = FetchType.LAZY)
		List<Notes> notes;

}
