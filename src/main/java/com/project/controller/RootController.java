package com.project.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.model.Member;
import com.project.service.MemberService;

@Controller
public class RootController {
	
	@Autowired
	MemberService memberService; 
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login")
	public String login(Member item, HttpSession session, RedirectAttributes ra) {
		// 검사를함
		Member member = memberService.item(item);
		System.out.println("email : " + item.getEmail());
		System.out.println("pw : " + item.getPasswd());
		if(member != null) {
			session.setAttribute("user", member);
			ra.addFlashAttribute("msg", "로그인 성공");
			return "redirect:/";
		}
		
		ra.addFlashAttribute("msg", "email 또는 password를 확인해주세요");
		
		return "redirect:/login";
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:.";
	}
	
	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}
	
	@PostMapping("/signup")
	public String signup(Member member,RedirectAttributes ra) {
		memberService.add(member);
		ra.addFlashAttribute("msg", "Sign up success");
		return "redirect:/login";
	}
	
	@ResponseBody
	@GetMapping("/checkId")
	public String checkId(String id) {
			
		if(memberService.checkId(id))
			return "OK";
		else return "FAIL";
	}
	
	@ResponseBody
	@GetMapping("/checkname")
	public String checkname(String name) {
			
		if(memberService.checkname(name))
			return "OK";
		else return "FAIL";
	}
	
	@GetMapping("/test")
	public String test() {
		return "test";
	}
}
