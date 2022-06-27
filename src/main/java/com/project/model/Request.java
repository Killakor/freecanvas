package com.project.model;

import lombok.Getter;
import lombok.Setter;

//@Getter
//@Setter
public class Request {
	
	private int number;
	private String title;
	private String name;
	private String regtime;
	private String Writing;
	
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRegtime() {
		return regtime;
	}
	public void setRegtime(String regtime) {
		this.regtime = regtime;
	}
	public String getWriting() {
		return Writing;
	}
	public void setWriting(String writing) {
		Writing = writing;
	}
	
	

}
