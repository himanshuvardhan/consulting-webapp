package com.vardhan.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ExceptionHandlerController {
	String path = "error";

	@RequestMapping("/404")
	public String error404() {
		System.out.println("custom error handler");
		return path + "/404";
	}
}
