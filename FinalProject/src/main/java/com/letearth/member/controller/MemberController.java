package com.letearth.member.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.letearth.member.domain.MemberVO;
import com.letearth.member.service.MemberService;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
//	@Inject
//	private MemberService service;
	
	/**
	 * 회원가입join(GET, POST)
	 */
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public void joinGET() throws Exception{
		
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public void joinPOST(MemberVO vo) throws Exception{
		
	}
	

}
