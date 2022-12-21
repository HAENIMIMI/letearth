package com.letearth.member.service;

import com.letearth.member.domain.MemberVO;

public interface MemberService {
	
	// 회원가입
	public void memberJoin(MemberVO vo);

	// 로그인
	public boolean memberLogin(MemberVO vo);
}
