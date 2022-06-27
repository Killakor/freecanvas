package com.project.dao;

import java.util.List;

import com.project.model.Free_Source;
import com.project.model.Posts;
import com.project.util.Pager;

public interface Free_SourceDao {

	int total(Pager pager);

	List<Free_Source> list(Pager pager);

	void add(Posts item);

}
