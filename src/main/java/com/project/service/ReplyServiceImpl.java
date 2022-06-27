package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.ReplyDao;
import com.project.model.Reply;

@Service
public class ReplyServiceImpl implements ReplyService {

	@Autowired
	ReplyDao dao;
	
	
	@Override
	public Reply add(Reply item) {
		dao.add(item);
		
		return dao.item(item.getReply_code());
	}


	@Override
	public List<Reply> list(int number) {
		return dao.list(number);
	}


	@Override
	public void delete(int reply_code) {
		dao.delete(reply_code);
		
	}


	@Override
	public void update(Reply item) {
		dao.update(item);
		
	}
	
	
	
}
