package com.project.quizapp.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.quizapp.dao.phpDao;
import com.project.quizapp.entities.php;

@Service
public class PhpQuestionsServiceimpl implements PhpQuestionService {
	@Autowired
	private phpDao phpDao;

	@Override
	public List<php> getphpQuestions() {
		return phpDao.findAll();
	}
	

	
}
