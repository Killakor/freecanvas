package com.project.service;

import java.util.List;

import com.project.model.Request;
import com.project.util.Pager;


public interface RequestService {

	List<Request> list(Pager pager);

	void add(Request item);

	Request item(int number);

	void update(Request item);

	void delete(int number);

	void dummy();

	void init();

}
