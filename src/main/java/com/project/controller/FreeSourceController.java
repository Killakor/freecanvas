package com.project.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.project.model.Category;
import com.project.model.Free_Source;
import com.project.model.Posts;
import com.project.model.UploadFile;
import com.project.service.CategoryService;
import com.project.service.Free_SourceService;
import com.project.util.FileUpload;
import com.project.util.Pager;

@Controller
@RequestMapping("/free_source")
public class FreeSourceController {
	final String path = "free_source/";
	final String UPLOAD_PATH = "D:/upload/";
	
	@Autowired
	CategoryService cservice;
	
	@Autowired
	Free_SourceService service;
	
	@RequestMapping({"/", "/list"})
	public String list(Pager pager, Model model) {
		List<Free_Source> list = service.list(pager);
		
		model.addAttribute("list", list);
		
		
		return path + "list";
	}
	
	@GetMapping("/add")
	public String add(Model model) {
		
		List<Category> list = cservice.list();
		
		model.addAttribute("list", list);
		
		for(Category item : list) {
			System.out.println(item.getContents());
		}
		
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(Posts item,@RequestParam("fileupload") MultipartFile fileupload, 
		@RequestParam("thumbnail") MultipartFile thumbnail){
		FileUpload upload = new FileUpload();
		UploadFile file = upload.upload(fileupload);
		UploadFile nali = upload.upload(thumbnail);
		
		item.setFile(file);
		item.setThumbnail1(nali);
		
		service.add(item);
		return path + "list";
	}
}
