package com.org.dto;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
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
		private String name; 
		private int age; 
		private String email; 
		private String password; 
		private long mobile;
		
		@OneToMany(mappedBy = "user",cascade = CascadeType.ALL)
		List<Notes> notesList;

}
