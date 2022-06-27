package com.project.service;

import java.util.List;

import com.project.model.Free_Source;
import com.project.model.Posts;
import com.project.util.Pager;

public interface Free_SourceService {

	List<Free_Source> list(Pager pager);

	void add(Posts item);

}
