package com.project.dao;

import com.project.model.Member;

public interface MemberDao {

	Member item(Member item);

	void add(Member member);

	int checkId(String id);

	int checkname(String name);
	

}
