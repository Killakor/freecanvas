package com.project.service;

import com.project.model.Member;

public interface MemberService {

	Member item(Member item);

	void add(Member member);

	boolean checkId(String id);

	boolean checkname(String name);

}
