package com.project.util;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.project.model.UploadFile;

public class FileUpload {
	final String UPLOAD_PATH = "D:/upload/";
	
	public UploadFile upload(MultipartFile fileupload) {
		
		String filename = fileupload.getOriginalFilename();
		String unique = UUID.randomUUID().toString();
		
		try {
			fileupload.transferTo(new File(String.format("%s%s_%s", UPLOAD_PATH, unique, filename)));
		
		} catch (IllegalStateException e) {
		
			e.printStackTrace();
		} catch (IOException e) {
		
			e.printStackTrace();
		}
		UploadFile upfile = new UploadFile();
		upfile.setFilename(filename);
		upfile.setUnique(unique);
		
		return upfile;
	}
}
