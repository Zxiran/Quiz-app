package com.project.quizapp.services;

import org.springframework.web.servlet.ModelAndView;

public interface UserService {
	
	public String login(String username,String password);

	public ModelAndView register(String uname, String pass,String email);

}
