package com.project.quizapp.entities;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class python {

	@Id
	int id;
	int corr_ans;
	String ques;
	String opt1;
	String opt2;
	String opt3;
	String opt4;
	
	public python(int id, int corr_ans, String ques, String opt1, String opt2, String opt3, String opt4) {
		super();
		this.id = id;
		this.corr_ans = corr_ans;
		this.ques = ques;
		this.opt1 = opt1;
		this.opt2 = opt2;
		this.opt3 = opt3;
		this.opt4 = opt4;
	}
	public int getCode() {
		return corr_ans;
	}
	public void setCode(int corr_ans) {
		this.corr_ans = corr_ans;
	}
	public python() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public String getQues() {
		return ques;
	}
	public void setQues(String ques) {
		this.ques = ques;
	}
	public String getOpt1() {
		return opt1;
	}
	public void setOpt1(String opt1) {
		this.opt1 = opt1;
	}
	public String getOpt2() {
		return opt2;
	}
	public void setOpt2(String opt2) {
		this.opt2 = opt2;
	}
	public String getOpt3() {
		return opt3;
	}
	public void setOpt3(String opt3) {
		this.opt3 = opt3;
	}
	public String getOpt4() {
		return opt4;
	}
	public void setOpt4(String opt4) {
		this.opt4 = opt4;
	}
}

