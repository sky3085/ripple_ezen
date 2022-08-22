package com.ezen.ripple;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ripple.bean.AccusationDTO;
import ripple.bean.CommentsDTO;
import ripple.bean.MovieDTO;
import ripple.bean.MoviePreDTO;
import ripple.bean.UserLikeDTO;
import ripple.service.AccusationService;
import ripple.service.CommentsService;
import ripple.service.MemberService;
import ripple.service.MovieService;
import ripple.service.UserLikeService;

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
	
	@Autowired
	private AccusationService accusationService;
	
	@Autowired
	private UserLikeService userLikeService;
	
	@RequestMapping(value = "/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping(value = "/userLikeAction")
	public ModelAndView userLikeAction(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		HttpSession session = request.getSession();
		int titleid = Integer.parseInt(request.getParameter("titleid"));
		String userid = (String) session.getAttribute("id");
		//좋야요! 테이블에 추가
		UserLikeDTO dto = new UserLikeDTO();
		dto.setTitleid(titleid);
		dto.setUserid(userid);
		userLikeService.userLikeInsert(dto);
		
		modelAndView.addObject("titleid", titleid);
		modelAndView.setViewName("redirect:detail");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/userLikeDeleteAction")
	public ModelAndView userLikeDeleteAction(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		HttpSession session = request.getSession();
		int titleid = Integer.parseInt(request.getParameter("titleid"));
		String userid = (String) session.getAttribute("id");
		//좋야요! 테이블에 추가
		UserLikeDTO dto = new UserLikeDTO();
		dto.setTitleid(titleid);
		dto.setUserid(userid);
		userLikeService.userLikeDelete(dto);
		
		modelAndView.addObject("titleid", titleid);
		modelAndView.setViewName("redirect:detail");
		
		return modelAndView;
	}
	
	
	@RequestMapping(value = "/accusationAction")
	public ModelAndView accusationAction(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		HttpSession session = request.getSession();
		
		String titleid = request.getParameter("titleid");
		int seq = Integer.parseInt(request.getParameter("seq"));
		String writer = request.getParameter("writer");
		String accuser = (String) session.getAttribute("id");
		
		AccusationDTO dto = new AccusationDTO();
		dto.setSeq(seq);
		dto.setWriter(writer);
		dto.setAccuser(accuser);
		//if accusationService.select 널이면 실행
		if(accusationService.accusationSelectCK(dto).size()==0) {
			accusationService.commentsInsert(dto);//기존에 없을때만 신고를 추가
		}
		
		modelAndView.addObject("titleid", titleid);
		modelAndView.setViewName("redirect:detail");
		
		return modelAndView;
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
		
		if(dto.getScore()!=-1) {//점수가 있다면
			//먼저 titleid로 점수랑 참여자수 가져와서
			MovieDTO movieDTO = movieService.movieView(request.getParameter("titleid"));
			double newScore = (movieDTO.getVote_score()*movieDTO.getVote_count()+dto.getScore())/(movieDTO.getVote_count()+1);
			
			//movieService.점수 업데이트
			movieService.voteScoreUpdate(newScore, dto.getTitleid());
			//movieService.투표참여자수 업데이트
			movieService.voteCountUpdate(dto.getTitleid());
		}
		
		modelAndView.addObject("titleid", dto.getTitleid());
		modelAndView.setViewName("redirect:detail");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/detail")
	public ModelAndView detail(HttpServletRequest request) {
		boolean likeTrue = false;
		String titleid = request.getParameter("titleid");
		if(titleid == null) {
			titleid = (String)request.getAttribute("titleid");
		}
		HttpSession session = request.getSession();
		MovieDTO dto = movieService.movieView(titleid);
		MoviePreDTO moviepreDTO = movieService.moviepredict(titleid);
		List<CommentsDTO> commentsList = commentsService.commentsSelect(Integer.parseInt(titleid));
		ModelAndView modelAndView = new ModelAndView();
		int score = (int)(100 * moviepreDTO.getPredict());
		
		List<UserLikeDTO> userLikeList = userLikeService.userLikeMatch(Integer.parseInt(titleid));
		for(UserLikeDTO userLikedto : userLikeList) {
			if(userLikedto.getUserid().equals(session.getAttribute("id"))) {
				likeTrue = true;
			}
		}
		
		modelAndView.addObject("score", score);
		modelAndView.addObject("dto", dto);
		modelAndView.addObject("commentsList", commentsList);
		modelAndView.addObject("titleid", titleid);
		modelAndView.addObject("likeTrue", likeTrue);
		modelAndView.setViewName("detail");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/join")
	public String join() {
		return "join";
	}
	
	@RequestMapping(value = "/list")
	public ModelAndView list(HttpServletRequest request) {
		HttpSession session = request.getSession();
		List<UserLikeDTO> userLikeList = new ArrayList<UserLikeDTO>();
		String sortMethod = request.getParameter("sortMethod");
		String movieSearch = request.getParameter("movieSearch");
		ModelAndView modelAndView = new ModelAndView();
		if(session.getAttribute("id")!=null) {
			userLikeList = userLikeService.userLikeList((String)session.getAttribute("id"));
		}else {
			userLikeList = null;
		}
		
		if(movieSearch == null) {
			int pg = 1;
			if (request.getParameter("pg") != null) {
				pg = Integer.parseInt(request.getParameter("pg"));
			}
			
			int endNum = pg * 12;
			int startNum = endNum - 11;
			
			List<MovieDTO> list = new ArrayList<MovieDTO>();
			if(sortMethod==null || sortMethod.equals("latest")) {
				list=movieService.movieList(startNum, endNum);
			}else if(sortMethod.equals("boxOffice")) {
				list=movieService.movieListBoxOffice(startNum, endNum);
			}
			
			
			int totalA = movieService.getTotalA();
			int totalP = (totalA + 11) / 12;
	
			int startPage = (pg - 1) / 5 * 5 + 1;
			int endPage = startPage + 4;
			if (endPage > totalP)
				endPage = totalP;
			
			
			modelAndView.addObject("pg", pg);
			modelAndView.addObject("list", list);
			modelAndView.addObject("totalP", totalP);
			modelAndView.addObject("startPage", startPage);
			modelAndView.addObject("endPage", endPage);
			modelAndView.addObject("userLikeList", userLikeList);
			modelAndView.setViewName("list");
		}else {
			
			int pg =1;
			int totalP = 1;
			int startPage = 1;
			int endPage = 1;
			List<MovieDTO> list =movieService.movieFind(movieSearch);
			modelAndView.addObject("pg", pg);
			modelAndView.addObject("list", list);
			modelAndView.addObject("totalP", totalP);
			modelAndView.addObject("startPage", startPage);
			modelAndView.addObject("endPage", endPage);
			modelAndView.addObject("userLikeList", userLikeList);
			modelAndView.setViewName("list");
		}
		
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
