package com.project.dao;

import java.util.List;

import com.project.model.Qna;
import com.project.util.Pager;

public interface QnaDao {

	List<Qna> list(Pager pager);

	void add(Qna item);

	Qna item(int number);

	void update(Qna item);

	void delete(int number);

	int total(Pager pager);

}
