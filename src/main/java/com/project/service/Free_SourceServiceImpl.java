package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.dao.FileDao;
import com.project.dao.Free_SourceDao;
import com.project.dao.ThumbnailDao;
import com.project.model.Free_Source;
import com.project.model.Posts;
import com.project.util.Pager;

@Service
public class Free_SourceServiceImpl implements Free_SourceService {
	
	@Autowired
	Free_SourceDao dao;

	@Autowired
	FileDao dao1;
	
	@Autowired
	ThumbnailDao dao2;
	
	@Override
	public List<Free_Source> list(Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.list(pager);
	}


	@Override
	public void add(Posts item) {
		dao.add(item);
		item.getFile().setNumber(item.getNumber());
		dao1.add(item.getFile());
		item.getThumbnail1().setNumber(item.getNumber());
		dao2.add(item.getThumbnail1());
	}
	
	
}
