package com.project.quizapp.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.quizapp.dao.pythonDao;
import com.project.quizapp.entities.python;
@Service
public class PythonQuestionServiceimpl implements PythonQuestionService {

	@Autowired
	private pythonDao pythonDao;
	@Override
	public List<python> getpythonQuestions() {
		return pythonDao.findAll();
	}

}
