package com.ezen.ripple;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import ripple.service.MemberService;


/**
 * Handles requests for the application home page.
 */
@Controller
public class RippleController {

	@Autowired
	private MemberService memberService;
	
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
	
	@RequestMapping(value = "/loginAction")
	public String loginAction(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String view = "";
		String id =  request.getParameter("id");
		String pwd = request.getParameter("pwd");

		int result = memberService.login(id, pwd);
		
		if(result>0) {
			session.setAttribute("id", id);
			view = "index";
		}else {
			request.setAttribute("msg", "로그인 실패");
			view = "login";
		}
		
		return view;
	}
	

}
