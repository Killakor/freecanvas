package com.project.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.project.model.Reply;
import com.project.service.ReplyService;

@RestController
@RequestMapping("/reply")
public class ReplyController {
	
	@Autowired
	ReplyService service;
	
	@PostMapping
	public Map<String, Object> add(@RequestBody Reply item){
		Map<String, Object> map = new HashMap<String, Object>();
		System.out.println(item.getName());
		Reply reply = service.add(item);
		map.put("item", reply);
		map.put("msg", "ok");
		return map;
	}
	
	@GetMapping
	public List<Reply> list(int number) {
		System.out.println("실행");
		List<Reply> list= service.list(number);
		return list;
	}
	
	@DeleteMapping
	public int delete(int code) {
		service.delete(code);
		return code;
	}
	
	@PutMapping
	public Reply update(@RequestBody Reply item) {
		service.update(item);
		return item;
		
	}
	
}