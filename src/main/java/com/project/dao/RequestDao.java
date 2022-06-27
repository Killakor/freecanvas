package com.project.dao;

import java.util.List;

import com.project.model.Request;
import com.project.util.Pager;

public interface RequestDao {

	List<Request> list(Pager pager);

	void add(Request item);

	Request item(int number);

	void update(Request item);

	void delete(int number);

	int total(Pager pager);

	

}
