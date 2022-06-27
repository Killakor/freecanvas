package com.project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.model.Reply;

@Repository
public class ReplyDaoImpl implements ReplyDao {
	@Autowired
	SqlSession sql;
	
	@Override
	public void add(Reply item) {
		sql.insert("reply.add", item);
	}

	@Override
	public Reply item(int reply_code) {
		
		return sql.selectOne("reply.item", reply_code);
	}

	@Override
	public List<Reply> list(int number) {
		return sql.selectList("reply.list", number);
	}

	@Override
	public void delete(int reply_code) {
			sql.delete("reply.delete", reply_code);
	}

	@Override
	public void update(Reply item) {
		sql.update("reply.update", item);
		
	}
	

}
