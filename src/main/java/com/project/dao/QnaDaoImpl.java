package com.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.Qna;
import com.project.util.Pager;


@Repository
public class QnaDaoImpl implements QnaDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Qna> list(Pager pager) {
		return sql.selectList("qna.list", pager);
	}

	@Override
	public void add(Qna item) {
		sql.insert("qna.add", item);
		
	}

	@Override
	public Qna item(int number) {
		return sql.selectOne("qna.item", number);
	}

	@Override
	public void update(Qna item) {
		sql.update("qna.update", item);
		
	}

	@Override
	public void delete(int number) {
		sql.delete("qna.delete", number);
		
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("qna.total", pager);
	}

	

	
}
