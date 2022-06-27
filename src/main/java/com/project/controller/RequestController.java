package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.model.Request;
import com.project.service.RequestService;
import com.project.util.Pager;

@Controller
@RequestMapping("/request")
public class RequestController {
	final String path = "request/";

	@Autowired
	RequestService service;
	
	
	@RequestMapping("/init")
	public String init() {
		service.init();
		return "redirect:list";
	}
	
	@RequestMapping("/dummy")
	public String dummy() {
		service.dummy();
		return "redirect:list";
	}
	
	@RequestMapping({"/", "/list"})
	public String list(Pager pager, Model model) {
		List<Request> list = service.list(pager);
		model.addAttribute("list", list);
		return path + "list";
	}
	
	@GetMapping("/add")
	public String add() {
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(Request item) {
		service.add(item);
		return "redirect:list";
	}
	
	@GetMapping("/update/{number}")
	public String update(@PathVariable int number, Model model) {
		Request item = service.item(number);
		model.addAttribute("item", item);
		return path + "update";
		
	}
	
	@PostMapping("/update/{number}")
	public String update(@PathVariable int number, Request item) {
		item.setNumber(number);
		service.update (item);
		return "redirect:..";
	}
	
	@GetMapping("/delete/{number}")
	public String delete(@PathVariable int number) {
		service.delete(number);
		return "redirect:..";
	}
	
	@GetMapping("/view/{number}")
	public String view(@PathVariable int number, Model model) {
		Request item = service.item(number);
		model.addAttribute("item", item);
		return path + "view";
		
	}
	
	
	
	
}
