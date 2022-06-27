package com.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.Free_Source;
import com.project.model.Posts;
import com.project.util.Pager;

@Repository
public class Free_SourceDaoImpl implements Free_SourceDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public int total(Pager pager) {
		return sql.selectOne("free_source.total", pager);
	}

	@Override
	public List<Free_Source> list(Pager pager) {
		return sql.selectList("free_source.list", pager);
	}

	@Override
	public void add(Posts item) {
		sql.insert("free_source.add", item);
		
	}

}
