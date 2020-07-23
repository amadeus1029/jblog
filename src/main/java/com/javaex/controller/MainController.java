package com.javaex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {
	@RequestMapping("/main")
	public String Main() {
		System.out.println("뭐라도 되라 좀");
		return "/main/index";
	}
}
