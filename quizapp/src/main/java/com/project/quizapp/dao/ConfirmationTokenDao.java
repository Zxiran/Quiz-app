package com.project.quizapp.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.quizapp.entities.ConfirmationToken;

public interface ConfirmationTokenDao  extends JpaRepository<ConfirmationToken, String> {
	ConfirmationToken findByConfirmationToken(String confirmationToken);
}
