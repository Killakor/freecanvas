package com.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.Request;
import com.project.util.Pager;

@Repository
public class RequestDaoImpl implements RequestDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Request> list(Pager pager) {
		return sql.selectList("request.list", pager);
	}

	@Override
	public void add(Request item) {
		sql.insert("request.add", item);
		
	}

	@Override
	public Request item(int number) {
		return sql.selectOne("request.item", number);
	}

	@Override
	public void update(Request item) {
		sql.update("request.update", item);
		
	}

	@Override
	public void delete(int number) {
		sql.delete("request.delete", number);
		
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("request.total", pager);
	}

	
}
