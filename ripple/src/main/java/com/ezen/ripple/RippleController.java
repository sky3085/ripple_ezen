package com.ezen.ripple;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ripple.bean.CommentsDTO;
import ripple.bean.MovieDTO;
import ripple.service.CommentsService;
import ripple.service.MemberService;
import ripple.service.MovieService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class RippleController {

	@Autowired
	private MemberService memberService;
	
	@Autowired
	private MovieService movieService;
	
	@Autowired
	private CommentsService commentsService;
	
	@RequestMapping(value = "/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/commentAction")
	public ModelAndView commentAction(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		CommentsDTO dto = new CommentsDTO();
		HttpSession session = request.getSession();
		
		dto.setId((String)session.getAttribute("id"));
		dto.setTitleid(Integer.parseInt(request.getParameter("titleid")));
		dto.setContents(request.getParameter("contents"));
		dto.setScore(Integer.parseInt(request.getParameter("score")));
		dto.setLevel(Integer.parseInt(request.getParameter("level")));
		dto.setOriginal_seq(Integer.parseInt(request.getParameter("original_seq")));
		
		int result = commentsService.commentsInsert(dto);
		
		modelAndView.addObject("titleid", dto.getTitleid());
		modelAndView.setViewName("redirect:detail");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/detail")
	public ModelAndView detail(HttpServletRequest request) {
		
		String titleid = request.getParameter("titleid");
		if(titleid == null) {
			titleid = (String)request.getAttribute("titleid");
		}
		
		MovieDTO dto = movieService.movieView(titleid);
		List<CommentsDTO> commentsList = commentsService.commentsSelect(Integer.parseInt(titleid));
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("dto", dto);
		modelAndView.addObject("commentsList", commentsList);
		modelAndView.addObject("titleid", titleid);
		modelAndView.setViewName("detail");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/join")
	public String join() {
		return "join";
	}
	
	@RequestMapping(value = "/list")
	public ModelAndView list(HttpServletRequest request) {
		int pg = 1;
		if (request.getParameter("pg") != null) {
			pg = Integer.parseInt(request.getParameter("pg"));
		}
		
		int endNum = pg * 12;
		int startNum = endNum - 11;

		List<MovieDTO> list=movieService.movieList(startNum, endNum);
		
		int totalA = movieService.getTotalA();
		int totalP = (totalA + 11) / 12;

		int startPage = (pg - 1) / 5 * 5 + 1;
		int endPage = startPage + 4;
		if (endPage > totalP)
			endPage = totalP;
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("list", list);
		modelAndView.addObject("totalP", totalP);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		modelAndView.setViewName("list");
		
		return modelAndView;
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
	
	@RequestMapping(value = "/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("id");
		
		return "index";
	}
	
	@RequestMapping(value = "/joinAction")
	public String joinAction(HttpServletRequest request) {
		String id =  request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		int result = memberService.join(id, pwd, email);
		String view = "";
		
		if(result>0) {
			view = "login";
		}else {
			view = "join";
		}
		
		return view;
	}
	

}
