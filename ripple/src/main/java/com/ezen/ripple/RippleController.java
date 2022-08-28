package com.ezen.ripple;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import ripple.bean.AccusationDTO;
import ripple.bean.CommentsDTO;
import ripple.bean.MemberDTO;
import ripple.bean.MovieDTO;
import ripple.bean.MoviePreDTO;
import ripple.bean.UserLikeDTO;
import ripple.service.AccusationService;
import ripple.service.CommentsService;
import ripple.service.KakaoAPI;
import ripple.service.MemberService;
import ripple.service.MovieService;
import ripple.service.MypageService;
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
	@Autowired
	private KakaoAPI kakao;
	@Autowired
	private MypageService mypageService;
	
	//메인페이지 호출
	@RequestMapping(value = "/index")
	public String index() {
		return "index";
	}
	
	//영화관 지도페이지 호출
	@RequestMapping(value = "/map")
	public String map() {
		return "map";
	}
	
	//카카오 로그인시 호출
	@RequestMapping(value = "/kakaoLogin")
	public String kakaoLogin(@RequestParam("code") String code, HttpServletRequest request) {
		String access_Token = kakao.getAccessToken(code);
		HashMap<String, Object> userInfo = kakao.getUserInfo(access_Token);
		HttpSession session = request.getSession();
	    //    클라이언트의 이메일이 존재할 때 세션에 해당 이메일과 토큰 등록
	    if (userInfo.get("email") != null) {
	        session.setAttribute("id", userInfo.get("email"));
	        session.setAttribute("access_Token", access_Token);
	    }
		return "index";
	}
	
	//영화 좋아요 버튼을 누를 때 호출
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
	
	//영화 좋아요(취소)버튼을 누를 때 호출
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
	
	
	//신고 댓글을 누를 때 호출
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
			accusationService.accusationInsert(dto);//기존에 없을때만 신고를 추가
		}
		
		modelAndView.addObject("titleid", titleid);
		modelAndView.setViewName("redirect:detail");
		
		return modelAndView;
	}
	
	//댓글 작성 시 호출
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
		
		//만약 처음 삽입이 아니라면? select로 id랑 titleid를 가져왔을대 길이가 1 이상이라면, 삽입 x
		//만약 처음 삽입이라면? select로 id랑 titleid를 가져왔을때 밑에 코드 실행
		List<CommentsDTO> commentsCheck = commentsService.commentsCheck(dto);
		
		if(commentsCheck.size()==0 || dto.getLevel()==2) {
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
		}
		
		modelAndView.addObject("titleid", dto.getTitleid());
		modelAndView.setViewName("redirect:detail");
		
		return modelAndView;
	}
	
	//영화 정보 상세페이지 호출
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
	
	//회원가입 페이지 호출
	@RequestMapping(value = "/join")
	public String join() {
		return "join";
	}
	
	//영화 리스트 페이지 호출 - 최신순, 영화 흥행 예측순 가능
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
	
	//로그인 페이지 호출
	@RequestMapping(value = "/login")
	public String login() {
		return "login";
	}
	
	//로그인 버튼 누를 때 호출
	@RequestMapping(value = "/loginAction")
	public String loginAction(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String view = "";
		String id =  request.getParameter("id");
		String pwd = request.getParameter("pwd");

		MemberDTO dto = memberService.login(id, pwd);
		
		if(dto != null) {
			session.setAttribute("id", id);
			if(dto.getManager().equals("1")) {
				session.setAttribute("manager", 1);
			}else {
				session.setAttribute("manager", 0);
			}
			view = "index";
		}else {
			request.setAttribute("msg", "로그인 실패");
			view = "login";
		}
		
		return view;
	}
	
	//로그아웃시 호출(카카오 로그아웃 포함)
	@RequestMapping(value = "/logout")
	public String logout(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute("id");
		if(session.getAttribute("access_Token")!=null) {
			session.removeAttribute("access_Token");
		}
		
		return "index";
	}
	
	//회원가입시 호출
	@RequestMapping(value = "/joinAction")
	public String joinAction(HttpServletRequest request) {
		String view = "";
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		if(id == "" || pwd == "" || email == "") {
			view = "join";
		}else {
			int result = memberService.join(id, pwd, email);
			
			if(result>0) {
				view = "login";
			}else {
				view = "join";
			}
		}
		return view;
	}
	
	//마이페이지 호출
	@RequestMapping(value = "/mypage")
	public ModelAndView mypage(HttpServletRequest request) {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		
		int pg = 1;
		if (request.getParameter("pg") != null) {
			pg = Integer.parseInt(request.getParameter("pg"));
		}
		
		int endNum = pg * 12;
		int startNum = endNum - 11;
		
		List<MovieDTO> mypageList = new ArrayList<MovieDTO>();
		mypageList = mypageService.mypageList(Integer.toString(startNum),
				Integer.toString(endNum), id);
		
		int totalA = mypageService.getTotalA(id);
		int totalP = (totalA + 11) / 12;

		int startPage = (pg - 1) / 5 * 5 + 1;
		int endPage = startPage + 4;
		if (endPage > totalP)
			endPage = totalP;
		
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("id", id);
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("mypageList", mypageList);
		modelAndView.addObject("totalP", totalP);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		modelAndView.setViewName("mypage");
		
		return modelAndView;
	}
}
