package com.letearth.member.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.letearth.member.domain.MemberVO;
import com.letearth.member.persistence.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	
	@Override
	public void memberJoin(MemberVO vo) {
		dao.memberJoin(vo);
		
	}

	@Override
	public boolean memberLogin(MemberVO vo) {
		MemberVO result = dao.memberLogin(vo);
		
		if(result != null) {
			return true;
		} else {
			return false;
		}
	}

}
