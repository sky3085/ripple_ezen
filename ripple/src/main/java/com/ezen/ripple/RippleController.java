package com.ezen.ripple;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Handles requests for the application home page.
 */
@Controller
public class RippleController {

	
	@RequestMapping(value = "/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/detail")
	public String detail() {
		return "detail";
	}
	
	@RequestMapping(value = "/join")
	public String join() {
		return "join";
	}
	
	@RequestMapping(value = "/list")
	public String list() {
		return "list";
	}
	
	@RequestMapping(value = "/login")
	public String login() {
		return "login";
	}
	
	

}
