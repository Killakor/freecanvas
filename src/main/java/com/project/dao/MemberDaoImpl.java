package com.project.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public Member item(Member item) {
		return sql.selectOne("member.item", item);
	}

	@Override
	public void add(Member member) {
		sql.insert("member.add", member);
		
	}

	@Override
	public int checkId(String id) {
		
		return sql.selectOne("member.check_id", id);
	}

	@Override
	public int checkname(String name) {
		return sql.selectOne("member.check_name", name);
	}

}
