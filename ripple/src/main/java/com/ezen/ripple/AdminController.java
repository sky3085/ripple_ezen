package com.ezen.ripple;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import ripple.bean.AccusationListDTO;
import ripple.bean.MemberDTO;
import ripple.service.AdminService;
import ripple.service.DeleteService;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private DeleteService deleteService;

	@RequestMapping(value = "/admin/adminReply.do")
	public ModelAndView deleteList(HttpServletRequest request) {

		int pg = 1;
		if (request.getParameter("pg") != null) {
			pg = Integer.parseInt(request.getParameter("pg"));
		}
		// 신고댓글 10개씩 보여주기
		int endNum = pg * 10;
		int startNum = endNum - 9;

		// 추가
		List<AccusationListDTO> list=deleteService.accusationList(startNum,endNum);
		// 페이징
		int totalA = deleteService.totalAccusaton(); // 총 댓글 갯수
		int totalP = (totalA + 9) / 10; // 총 페이지

		int startPage = (pg - 1) / 3 * 3 + 1;
		int endPage = startPage + 2;
		if (endPage > totalP)
			endPage = totalP;

		ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("pg", pg);
		modelAndView.addObject("list", list);
		modelAndView.addObject("totalA", totalA);
		modelAndView.addObject("totalP", totalP);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);

		modelAndView.setViewName("admin/adminMain");

		return modelAndView;
	}
	
	@RequestMapping(value="/admin/replyDelete.do")
	private ModelAndView replyDelete(HttpServletRequest request) {
		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = 1;
		if (request.getParameter("pg") != null) {
			pg = Integer.parseInt(request.getParameter("pg"));
		}
		
		int result= deleteService.replyDelete(seq); // 글삭제
		
		ModelAndView modelAndView= new ModelAndView();
		modelAndView.addObject("pg",pg);
		modelAndView.addObject("result",result);
		
		modelAndView.setViewName("admin/replyDelete");
		
		return modelAndView;
		
	}
	
	@RequestMapping(value="/admin/adminMap.do")
	public ModelAndView adminMap(HttpServletRequest request) {
	
		int pg=1;
		if(request.getParameter("pg") != null) {
			pg= Integer.parseInt(request.getParameter("pg"));
		}
		
		int totalA = adminService.totalmember(); //총 회원수
		int totalP = adminService.totalAccusation(); //총 신고리스트수
		
		ModelAndView modelAndView= new ModelAndView();
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("totalA",totalA);
		modelAndView.addObject("totalP",totalP);
		modelAndView.setViewName("admin/adminMain");	
		return modelAndView;
	}
	
	
	
	@RequestMapping(value="/admin/adminMemberList.do")
	public ModelAndView adminList(HttpServletRequest request) {
	
		int pg=1;
		if(request.getParameter("pg") != null) {
			pg= Integer.parseInt(request.getParameter("pg"));
		}
		//회원 10명씩 보여주기
		int endNum = pg*10;
		int startNum = endNum - 9;
		
		List<MemberDTO> list=adminService.adminList(startNum, endNum);
		
		//페이징
		int totalA = adminService.totalmember(); //총 회원수
		int totalP= (totalA + 9) / 10; // 총 페이지
		
		int startPage= (pg-1) / 3*3 + 1;
		int endPage =startPage + 2;
		if (endPage >  totalP)
			endPage = totalP;
		
		
		
		ModelAndView modelAndView= new ModelAndView();

		modelAndView.addObject("pg", pg);
		modelAndView.addObject("list", list);
		modelAndView.addObject("totalA",totalA);
		modelAndView.addObject("totalP", totalP);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		
		
		modelAndView.setViewName("admin/adminMain");
		
		return modelAndView;
	}
	
}
