package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.QnaDao;
import com.project.model.Qna;
import com.project.util.Pager;



@Service
public class QnaServiceImpl implements QnaService {

	@Autowired
	QnaDao dao;
	
	@Override
	public List<Qna> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	public void add(Qna item) {
		dao.add(item);
		
	}

	@Override
	public Qna item(int number) {
		Qna item = dao.item(number);
		
		
		item.getWriting().replace("<p>", "");
		item.getWriting().replace("</p>", "");
		
		return item;
	}

	@Override
	public void update(Qna item) {
		dao.update(item);
		
	}

	@Override
	public void delete(int number) {
		dao.delete(number);
		
	}

	@Override
	public void dummy() {
		for(int index = 1; index < 100; index++) {
			Qna item = new Qna();
			
			item.setTitle("Title" + index);
			item.setName("user");
			item.setWriting("Writing" + index);
			
			
			dao.add(item);
		}
		
	}

	@Override
	public void init() {
		Pager pager = new Pager();
		
		do {
			List<Qna> list = dao.list(pager);
			
			if(list.size() < 1)
				break;
			
			for(Qna item : list)
				dao.delete(item.getNumber());
		} while(true);
		
		
	}
	


}
