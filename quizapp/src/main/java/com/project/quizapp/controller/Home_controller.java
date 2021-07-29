package com.project.quizapp.controller;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.jni.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.project.quizapp.dao.ConfirmationTokenDao;
import com.project.quizapp.dao.QuestionDao;
import com.project.quizapp.dao.UserDao;
import com.project.quizapp.entities.ConfirmationToken;
import com.project.quizapp.entities.Questions;
import com.project.quizapp.entities.Users;
import com.project.quizapp.entities.c;
import com.project.quizapp.entities.php;
import com.project.quizapp.entities.python;
import com.project.quizapp.services.PhpQuestionService;
import com.project.quizapp.services.PythonQuestionService;
import com.project.quizapp.services.QuestionService;
import com.project.quizapp.services.UserService;
import com.project.quizapp.services.cQuestionService;

import ch.qos.logback.core.net.SyslogOutputStream;

@RestController
public class Home_controller {
	@Autowired
	private UserService userservice;
	@Autowired
	private PhpQuestionService phpquestionservice;
	@Autowired
	private PythonQuestionService pythonquestionservice;
	@Autowired
	private cQuestionService cquestionservice;
	@Autowired
	private QuestionDao questiondao;
	@Autowired
	private QuestionService questionservice;
	@Autowired
	private ConfirmationTokenDao confirmationtokendao ;
	@Autowired
	private UserDao userdao;
	
	
	@RequestMapping(value="/confirm-account", method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView confirmUserAccount(ModelAndView modelAndView, @RequestParam("token")String confirmationToken)
	{
	    ConfirmationToken token = confirmationtokendao.findByConfirmationToken(confirmationToken);

	    if(token != null)
	    {
	    	Users user = userdao.findByUsername(token.getUser().getUsername());
	        user.setEnabled(true);
	        userdao.save(user);
	        modelAndView.addObject("register","Your account has been verified successfully");
	        modelAndView.setViewName("login.jsp");
	    }
	    else
	    {
	        modelAndView.addObject("register","Invalid Link or Expired link");
	        modelAndView.setViewName("login.jsp");
	    }

	    return modelAndView;
	}
	
	
	
@GetMapping("/questions")
public ModelAndView getQuestions()
{
	ModelAndView mv = new ModelAndView();
	String allques[]=new String[10];
	String option1[]=new String[10];
	String option2[]=new String[10];
	String option3[]=new String[10];
	String option4[]=new String[10];
	int count=0;
	java.util.List<Questions> l;
	l=questionservice.getQuestions();
	
	
	for (Questions questions : l) {
		String ques=questions.getQues();
		String opt1=questions.getOpt1();
		String opt2=questions.getOpt2();
		String opt3=questions.getOpt3();
		String opt4=questions.getOpt4();
		allques[count]=ques;
		option1[count]=opt1;
		option2[count]=opt2;
		option3[count]=opt3;
		option4[count]=opt4;
		count++;
		
		
	}
	mv.addObject("allques",allques);
	mv.addObject("option1", option1);
	mv.addObject("option2", option2);
	mv.addObject("option3", option3);
	mv.addObject("option4", option4);
	mv.setViewName("java_questions.jsp");
	
	return mv;
	
}
@PostMapping("/login")
public ModelAndView login(@RequestParam String uname,String pass,HttpServletRequest request) {
	
	ModelAndView mv= new ModelAndView();
	String result=userservice.login(uname,pass);
	
      if(result.equals("No such user")) {
    	  mv.addObject("Error", "No Such User Exist");
			mv.setViewName("login.jsp");
		
	  }
      else if(result.equals("1")) {
		
		if(userdao.getOne(uname).isEnabled()) {
			String username=uname;
			request.getSession().setAttribute("Username", username);
			mv.addObject("LoggedUsername", username);
			mv.setViewName("home.jsp");

		}
		else {
			mv.addObject("notregister","Please verify your account before login");
			mv.setViewName("login.jsp");

		}
		
		
	}
      else if(result.equals("password incorrect")) {
			mv.addObject("pass_incorr","Please Check Your Password");
			mv.setViewName("login.jsp");

      }
	
	
	return mv;
}


@PostMapping("/register")
public ModelAndView registar(@RequestParam  String uname ,String pass,String email) {
  
	return this.userservice.register( uname,pass,email);
	

		

}

@PostMapping("/logout")
public ModelAndView logout(HttpServletRequest request)
{
	ModelAndView mv= new ModelAndView();

	request.getSession().invalidate();
	
	mv.setViewName("login.jsp");

	return mv;
}


@GetMapping("/php_questions")
public ModelAndView getphpQuestions()
{
	ModelAndView mv = new ModelAndView();
	
	String allques[]=new String[10];
	String option1[]=new String[10];
	String option2[]=new String[10];
	String option3[]=new String[10];
	String option4[]=new String[10];
	int count=0;
	java.util.List<php> l;
	l=phpquestionservice.getphpQuestions();
	
	
	for (php questions : l) {
		String ques=questions.getQues();
		String opt1=questions.getOpt1();
		String opt2=questions.getOpt2();
		String opt3=questions.getOpt3();
		String opt4=questions.getOpt4();
		allques[count]=ques;
		option1[count]=opt1;
		option2[count]=opt2;
		option3[count]=opt3;
		option4[count]=opt4;
		count++;
		
		
	}
	mv.addObject("allques",allques);
	mv.addObject("option1", option1);
	mv.addObject("option2", option2);
	mv.addObject("option3", option3);
	mv.addObject("option4", option4);
	mv.setViewName("php_questions.jsp");
	
	return mv;
	
}



@GetMapping("/python_questions")
public ModelAndView getpythonQuestions()
{
	ModelAndView mv = new ModelAndView();
	
	String allques[]=new String[10];
	String option1[]=new String[10];
	String option2[]=new String[10];
	String option3[]=new String[10];
	String option4[]=new String[10];
	int count=0;
	java.util.List<python> l;
	l=pythonquestionservice.getpythonQuestions();
	
	
	for (python questions : l) {
		String ques=questions.getQues();
		String opt1=questions.getOpt1();
		String opt2=questions.getOpt2();
		String opt3=questions.getOpt3();
		String opt4=questions.getOpt4();
		allques[count]=ques;
		option1[count]=opt1;
		option2[count]=opt2;
		option3[count]=opt3;
		option4[count]=opt4;
		count++;
		
		
	}
	mv.addObject("allques",allques);
	mv.addObject("option1", option1);
	mv.addObject("option2", option2);
	mv.addObject("option3", option3);
	mv.addObject("option4", option4);
	mv.setViewName("python_questions.jsp");
	
	return mv;
	
}



@GetMapping("/c_questions")
public ModelAndView getcQuestions()
{
	ModelAndView mv = new ModelAndView();
	
	String allques[]=new String[10];
	String option1[]=new String[10];
	String option2[]=new String[10];
	String option3[]=new String[10];
	String option4[]=new String[10];
	int count=0;
	java.util.List<c> l;
	l=cquestionservice.getcQuestions();
	
	
	for (c questions : l) {
		String ques=questions.getQues();
		String opt1=questions.getOpt1();
		String opt2=questions.getOpt2();
		String opt3=questions.getOpt3();
		String opt4=questions.getOpt4();
		allques[count]=ques;
		option1[count]=opt1;
		option2[count]=opt2;
		option3[count]=opt3;
		option4[count]=opt4;
		count++;
		
		
	}
	mv.addObject("allques",allques);
	mv.addObject("option1", option1);
	mv.addObject("option2", option2);
	mv.addObject("option3", option3);
	mv.addObject("option4", option4);
	mv.setViewName("c_questions.jsp");
	
	return mv;
	
}




@PostMapping("/calculation")
public ModelAndView calculation(HttpServletRequest request)
{
	int count=0;
	int score=0;
	int Corr_Ans[]=new int[10];
	int wrong_Ans[]=new int[10];
	int Your_Ans[]=new int[10];
    String color[]=new String[10];
	ArrayList<Integer> db_Ans = new ArrayList<Integer>();
	ModelAndView mv = new ModelAndView();
	
	String s1=request.getParameter("q1");
	String s2=request.getParameter("q2");
	String s3=request.getParameter("q3");
	String s4=request.getParameter("q4");
	String s5=request.getParameter("q5");
	String s6=request.getParameter("q6");
	String s7=request.getParameter("q7");
	String s8=request.getParameter("q8");
	String s9=request.getParameter("q9");
	String s10=request.getParameter("q10");
	
	if(s1!=null) {
		db_Ans.add(Integer.parseInt(s1));
	}
	else {
		db_Ans.add(0);

	}
	
	if(s2!=null) {
		db_Ans.add(Integer.parseInt(s2));
	}
	else {
		db_Ans.add(0);

	}
	
	if(s3!=null) {
		db_Ans.add(Integer.parseInt(s3));
	}
	else {
		db_Ans.add(0);

	}
	
	if(s4!=null) {
		db_Ans.add(Integer.parseInt(s4));
	}
	else {
		db_Ans.add(0);

	}
	
	if(s5!=null) {
		db_Ans.add(Integer.parseInt(s5));
	}
	else {
		db_Ans.add(0);

	}
	if(s6!=null) {
		db_Ans.add(Integer.parseInt(s6));
	}
	else {
		db_Ans.add(0);

	}
	if(s7!=null) {
		db_Ans.add(Integer.parseInt(s7));
	}
	else {
		db_Ans.add(0);

	}
	if(s8!=null) {
		db_Ans.add(Integer.parseInt(s8));
	}
	else {
		db_Ans.add(0);

	}
	if(s9!=null) {
		db_Ans.add(Integer.parseInt(s9));
	}
	else {
		db_Ans.add(0);

	}
	if(s10!=null) {
		db_Ans.add(Integer.parseInt(s10));
	}
	else {
		db_Ans.add(0);

	}
	
     
 	java.util.List<Questions> l;
	l=questionservice.getQuestions();

     
	for (Questions questions : l) {
 		int corr_ans=questions.getCode();
 		Corr_Ans[count]=corr_ans; 	
		count++;		
 	}
	
	for(int i=0;i<10;i++) {
		
		Your_Ans[i]=db_Ans.get(i);
		
		if(Corr_Ans[i]==db_Ans.get(i)) {
			color[i]="table-success";
			score++;
		}
		else {
			color[i]="table-danger";
			wrong_Ans[i]=i+1;
		}
	}
	
     
     mv.addObject("score", score);
     mv.addObject("your_ans", Your_Ans);
     mv.addObject("color", color);
     mv.addObject("corr_Ans", Corr_Ans);

     mv.setViewName("result.jsp");
 	
 	return mv;
}







@PostMapping("/c_calculation")
public ModelAndView c_calculation(HttpServletRequest request)
{
	int count=0;
	int score=0;
	int Corr_Ans[]=new int[10];
	int wrong_Ans[]=new int[10];
	int Your_Ans[]=new int[10];
    String color[]=new String[10];
	ArrayList<Integer> db_Ans = new ArrayList<Integer>();
	ModelAndView mv = new ModelAndView();
	
	String s1=request.getParameter("q1");
	String s2=request.getParameter("q2");
	String s3=request.getParameter("q3");
	String s4=request.getParameter("q4");
	String s5=request.getParameter("q5");
	String s6=request.getParameter("q6");
	String s7=request.getParameter("q7");
	String s8=request.getParameter("q8");
	String s9=request.getParameter("q9");
	String s10=request.getParameter("q10");
	
	if(s1!=null) {
		db_Ans.add(Integer.parseInt(s1));
	}
	else {
		db_Ans.add(0);

	}
	
	if(s2!=null) {
		db_Ans.add(Integer.parseInt(s2));
	}
	else {
		db_Ans.add(0);

	}
	
	if(s3!=null) {
		db_Ans.add(Integer.parseInt(s3));
	}
	else {
		db_Ans.add(0);

	}
	
	if(s4!=null) {
		db_Ans.add(Integer.parseInt(s4));
	}
	else {
		db_Ans.add(0);

	}
	
	if(s5!=null) {
		db_Ans.add(Integer.parseInt(s5));
	}
	else {
		db_Ans.add(0);

	}
	if(s6!=null) {
		db_Ans.add(Integer.parseInt(s6));
	}
	else {
		db_Ans.add(0);

	}
	if(s7!=null) {
		db_Ans.add(Integer.parseInt(s7));
	}
	else {
		db_Ans.add(0);

	}
	if(s8!=null) {
		db_Ans.add(Integer.parseInt(s8));
	}
	else {
		db_Ans.add(0);

	}
	if(s9!=null) {
		db_Ans.add(Integer.parseInt(s9));
	}
	else {
		db_Ans.add(0);

	}
	if(s10!=null) {
		db_Ans.add(Integer.parseInt(s10));
	}
	else {
		db_Ans.add(0);

	}
	
     
 	java.util.List<c> l;
	l=cquestionservice.getcQuestions();

     
	for (c questions : l) {
 		int corr_ans=questions.getCode();
 		Corr_Ans[count]=corr_ans; 	
		count++;		
 	}
	
	for(int i=0;i<10;i++) {
		
		Your_Ans[i]=db_Ans.get(i);
		
		if(Corr_Ans[i]==db_Ans.get(i)) {
			color[i]="table-success";
			score++;
		}
		else {
			color[i]="table-danger";
			wrong_Ans[i]=i+1;
		}
	}
	
     
     mv.addObject("score", score);
     mv.addObject("your_ans", Your_Ans);
     mv.addObject("color", color);
     mv.addObject("corr_Ans", Corr_Ans);

     mv.setViewName("result.jsp");
 	
 	return mv;
}






@PostMapping("/php_calculation")
public ModelAndView php_calculation(HttpServletRequest request)
{
	int count=0;
	int score=0;
	int Corr_Ans[]=new int[10];
	int wrong_Ans[]=new int[10];
	int Your_Ans[]=new int[10];
    String color[]=new String[10];
	ArrayList<Integer> db_Ans = new ArrayList<Integer>();
	ModelAndView mv = new ModelAndView();
	
	String s1=request.getParameter("q1");
	String s2=request.getParameter("q2");
	String s3=request.getParameter("q3");
	String s4=request.getParameter("q4");
	String s5=request.getParameter("q5");
	String s6=request.getParameter("q6");
	String s7=request.getParameter("q7");
	String s8=request.getParameter("q8");
	String s9=request.getParameter("q9");
	String s10=request.getParameter("q10");
	
	if(s1!=null) {
		db_Ans.add(Integer.parseInt(s1));
	}
	else {
		db_Ans.add(0);

	}
	
	if(s2!=null) {
		db_Ans.add(Integer.parseInt(s2));
	}
	else {
		db_Ans.add(0);

	}
	
	if(s3!=null) {
		db_Ans.add(Integer.parseInt(s3));
	}
	else {
		db_Ans.add(0);

	}
	
	if(s4!=null) {
		db_Ans.add(Integer.parseInt(s4));
	}
	else {
		db_Ans.add(0);

	}
	
	if(s5!=null) {
		db_Ans.add(Integer.parseInt(s5));
	}
	else {
		db_Ans.add(0);

	}
	if(s6!=null) {
		db_Ans.add(Integer.parseInt(s6));
	}
	else {
		db_Ans.add(0);

	}
	if(s7!=null) {
		db_Ans.add(Integer.parseInt(s7));
	}
	else {
		db_Ans.add(0);

	}
	if(s8!=null) {
		db_Ans.add(Integer.parseInt(s8));
	}
	else {
		db_Ans.add(0);

	}
	if(s9!=null) {
		db_Ans.add(Integer.parseInt(s9));
	}
	else {
		db_Ans.add(0);

	}
	if(s10!=null) {
		db_Ans.add(Integer.parseInt(s10));
	}
	else {
		db_Ans.add(0);

	}
	
     
 	java.util.List<php> l;
	l=phpquestionservice.getphpQuestions();

     
	for (php questions : l) {
 		int corr_ans=questions.getCode();
 		Corr_Ans[count]=corr_ans; 	
		count++;		
 	}
	
	for(int i=0;i<10;i++) {
		
		Your_Ans[i]=db_Ans.get(i);
		
		if(Corr_Ans[i]==db_Ans.get(i)) {
			color[i]="table-success";
			score++;
		}
		else {
			color[i]="table-danger";
			wrong_Ans[i]=i+1;
		}
	}
	
     
     mv.addObject("score", score);
     mv.addObject("your_ans", Your_Ans);
     mv.addObject("color", color);
     mv.addObject("corr_Ans", Corr_Ans);

     mv.setViewName("result.jsp");
 	
 	return mv;
}






@PostMapping("/python_calculation")
public ModelAndView python_calculation(HttpServletRequest request)
{
	int count=0;
	int score=0;
	int Corr_Ans[]=new int[10];
	int wrong_Ans[]=new int[10];
	int Your_Ans[]=new int[10];
    String color[]=new String[10];
	ArrayList<Integer> db_Ans = new ArrayList<Integer>();
	ModelAndView mv = new ModelAndView();
	
	String s1=request.getParameter("q1");
	String s2=request.getParameter("q2");
	String s3=request.getParameter("q3");
	String s4=request.getParameter("q4");
	String s5=request.getParameter("q5");
	String s6=request.getParameter("q6");
	String s7=request.getParameter("q7");
	String s8=request.getParameter("q8");
	String s9=request.getParameter("q9");
	String s10=request.getParameter("q10");
	
	if(s1!=null) {
		db_Ans.add(Integer.parseInt(s1));
	}
	else {
		db_Ans.add(0);

	}
	
	if(s2!=null) {
		db_Ans.add(Integer.parseInt(s2));
	}
	else {
		db_Ans.add(0);

	}
	
	if(s3!=null) {
		db_Ans.add(Integer.parseInt(s3));
	}
	else {
		db_Ans.add(0);

	}
	
	if(s4!=null) {
		db_Ans.add(Integer.parseInt(s4));
	}
	else {
		db_Ans.add(0);

	}
	
	if(s5!=null) {
		db_Ans.add(Integer.parseInt(s5));
	}
	else {
		db_Ans.add(0);

	}
	if(s6!=null) {
		db_Ans.add(Integer.parseInt(s6));
	}
	else {
		db_Ans.add(0);

	}
	if(s7!=null) {
		db_Ans.add(Integer.parseInt(s7));
	}
	else {
		db_Ans.add(0);

	}
	if(s8!=null) {
		db_Ans.add(Integer.parseInt(s8));
	}
	else {
		db_Ans.add(0);

	}
	if(s9!=null) {
		db_Ans.add(Integer.parseInt(s9));
	}
	else {
		db_Ans.add(0);

	}
	if(s10!=null) {
		db_Ans.add(Integer.parseInt(s10));
	}
	else {
		db_Ans.add(0);

	}
	
     
 	java.util.List<python> l;
	l=pythonquestionservice.getpythonQuestions();

     
	for (python questions : l) {
 		int corr_ans=questions.getCode();
 		Corr_Ans[count]=corr_ans; 	
		count++;		
 	}
	
	for(int i=0;i<10;i++) {
		
		Your_Ans[i]=db_Ans.get(i);
		
		if(Corr_Ans[i]==db_Ans.get(i)) {
			color[i]="table-success";
			score++;
		}
		else {
			color[i]="table-danger";
			wrong_Ans[i]=i+1;
		}
	}
	
     
     mv.addObject("score", score);
     mv.addObject("your_ans", Your_Ans);
     mv.addObject("color", color);
     mv.addObject("corr_Ans", Corr_Ans);

     mv.setViewName("result.jsp");
 	
 	return mv;
}


}