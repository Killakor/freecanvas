package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.RequestDao;
import com.project.model.Request;
import com.project.util.Pager;

@Service
public class RequestServiceImpl implements RequestService {

	@Autowired
	RequestDao dao;
	
	@Override
	public List<Request> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	public void add(Request item) {
		dao.add(item);
		
	}

	@Override
	public Request item(int number) {
		Request item = dao.item(number);
		
		
		item.getWriting().replace("<p>", "");
		item.getWriting().replace("</p>", "");
		
		return item;
	}

	@Override
	public void update(Request item) {
		dao.update(item);
		
	}

	@Override
	public void delete(int number) {
		dao.delete(number);
		
	}

	@Override
	public void dummy() {
		for(int index = 1; index < 100; index++) {
			Request item = new Request();
			
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
			List<Request> list = dao.list(pager);
			
			if(list.size() < 1)
				break;
			
			for(Request item : list)
				dao.delete(item.getNumber());
		} while(true);
		
		
	}

	


}
