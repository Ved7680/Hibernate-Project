package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {

	@GetMapping("/newuser")
	public String newUser() {
		return "NewUser";
	}
	
	
	
}
