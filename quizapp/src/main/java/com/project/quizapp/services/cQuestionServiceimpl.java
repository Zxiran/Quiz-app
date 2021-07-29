package com.project.quizapp.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.quizapp.dao.cDao;
import com.project.quizapp.entities.c;
@Service
public class cQuestionServiceimpl implements cQuestionService {
	
	@Autowired
	private cDao cDao;

	@Override
	public List<c> getcQuestions() {
		return cDao.findAll();
	}

}


