package com.project.service;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.project.model.Reply;

@Repository
public interface ReplyService {
	public Reply add(Reply item);

	public List<Reply> list(int number);

	public void delete(int reply_code);

	public void update(Reply item);
	
	
}
