package com.project.quizapp.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.quizapp.dao.QuestionDao;
import com.project.quizapp.entities.Questions;
@Service
public class QuestionServiceimpl implements QuestionService {
	@Autowired
	private QuestionDao questionDao;

	@Override
	public List<Questions> getQuestions() {
		// TODO Auto-generated method stub
		return questionDao.findAll();
	}

	
	@Override
	public Questions addQuestion(Questions question) {
		// TODO Auto-generated method stub
		questionDao.save(question);
		return question;
	}

}
