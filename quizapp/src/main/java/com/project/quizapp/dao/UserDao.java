package com.project.quizapp.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.quizapp.entities.Users;

public interface UserDao extends JpaRepository<Users, String>{
	 Users findByUsername(String username);
		
	}
	
	

