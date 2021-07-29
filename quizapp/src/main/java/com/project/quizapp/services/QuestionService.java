package com.project.quizapp.services;

import com.project.quizapp.entities.Questions;

import java.util.*;

public interface QuestionService {

	
	public List<Questions> getQuestions();
	public Questions addQuestion(Questions question);
	
}
