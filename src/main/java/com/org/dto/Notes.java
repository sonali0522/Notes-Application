package com.org.dto;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Notes {
	
	@Id
	private int id;
	
	private String tittle;
	private String description;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn
	private User user;

}
