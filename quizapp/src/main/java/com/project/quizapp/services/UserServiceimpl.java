package com.project.quizapp.services;

import java.util.Optional;

import org.apache.tomcat.jni.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.project.quizapp.dao.ConfirmationTokenDao;
import com.project.quizapp.dao.UserDao;
import com.project.quizapp.entities.ConfirmationToken;
import com.project.quizapp.entities.Users;

@Service
public class UserServiceimpl implements UserService {

	
		
		@Autowired
		private UserDao userdao;
		@Autowired
		private ConfirmationTokenDao confirmationtokendao ;
		@Autowired
		private EmailService emailservice ;
		
		@Override
		public String login(String username,String password) {
			
			 if(userdao.existsById(username))
			 {
				 Optional<Users> user=userdao.findById(username);
				 String checkpass= user.get().getPassword();
				if(password.equals(checkpass)) {
				 	return "1";
				 }
				
				 else {
					 return "password incorrect";
				 }
			 }
			 else {
				 return "No such user";
			 }
		
		}

		@Override
		public ModelAndView register(String uname, String pass,String email) {

			ModelAndView mv= new ModelAndView();
            String message="";
				if(userdao.existsById(uname)) {
					message="User Already Exist";
					mv.addObject("message", message);
					mv.setViewName("login.jsp");
					return mv;
				}
				else {
					
					
					 Users user=new Users(uname,pass,email);
					 user.setUsername(uname);
					 user.setPassword(pass);
					 user.setEmail(email);
					 userdao.save(user);
					 
					 
					 ConfirmationToken confirmationToken = new ConfirmationToken(user);

			            confirmationtokendao.save(confirmationToken);

			            SimpleMailMessage mailMessage = new SimpleMailMessage();
			            mailMessage.setTo(user.getEmail());
			            mailMessage.setSubject("Complete Registration!");
			            mailMessage.setFrom("Quizapp@gmail.com");
			            mailMessage.setText("To confirm your account, please click here : "
			            +"http://localhost:9090/confirm-account?token="+confirmationToken.getConfirmationToken());

			            emailservice.sendEmail(mailMessage);
			            mv.addObject("email", user.getEmail());
			            mv.setViewName("registration_status.jsp");
					 
						 
					return mv;
				}
			
		}
		
		
		
	
	
}
