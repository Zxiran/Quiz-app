package com.project.quizapp.dao;



import org.springframework.data.jpa.repository.JpaRepository;

import com.project.quizapp.entities.Questions;

public interface QuestionDao extends JpaRepository<Questions,Integer> {

}