package com.letearth.member.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.letearth.member.domain.MemberVO;
import com.letearth.member.service.MemberService;
import com.mysql.cj.Session;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	@Inject
	private MemberService service;
	
	/**
	 * 회원가입join(GET, POST)
	 */
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public void joinGET() throws Exception{
		
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String joinPOST(MemberVO vo) throws Exception{
		service.memberJoin(vo);
		
		return "redirect:/member/login";
	}
	
	/**
	 * 로그인login(GET, POST)
	 */
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public void loginGET() throws Exception{
		
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String loginPOST(MemberVO vo, HttpSession session) throws Exception{
		boolean result = service.memberLogin(vo);
		
		String resultURI = "";
		if(result) {	// 로그인 성공 시
			resultURI = "redirect:/member/main";
			session.setAttribute("member_id", vo.getMember_id());
		} else {		// 로그인 실패 시
			resultURI = "redirect:/member/login";
		}
		
		return resultURI;
	}
	

}
