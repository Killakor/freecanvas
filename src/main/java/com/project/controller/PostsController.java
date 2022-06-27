package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.model.Category;
import com.project.service.CategoryService;

@Controller
@RequestMapping("/posts")
public class PostsController {
	final String path = "posts/";
	
	@Autowired
	CategoryService service;
	
	@GetMapping("/list")
	public String list() {
		return path + "list";
	}
	
	@GetMapping("/add")
	public String add(Model model) {
		
		List<Category> list = service.list();
		
		model.addAttribute("list", list);
		
		for(Category item : list) {
			System.out.println(item.getContents());
		}
		
		return path + "add";
	}
}


