package com.luv2code.springsecurity.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ErrorController {
	
	//request mapping for access denied page
	@GetMapping("/access-denied")
	public String showAccessDenied() {
		return "access-denied";
	}

}
