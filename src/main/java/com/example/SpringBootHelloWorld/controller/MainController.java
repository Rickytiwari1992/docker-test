package com.example.SpringBootHelloWorld.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {
	
	@RequestMapping("/testMain")
	public String testMain()
	{
		return "Hello Champ ! /n Your Sprint Boot App With Docker Is Successfull.";
	}

}
