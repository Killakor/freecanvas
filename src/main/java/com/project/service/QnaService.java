package com.project.service;

import java.util.List;

import com.project.model.Qna;
import com.project.util.Pager;

public interface QnaService {

	List<Qna> list(Pager pager);

	void add(Qna item);

	Qna item(int number);

	void update(Qna item);

	void delete(int number);

	void dummy();

	void init();

	

}