package com.letearth.member.persistence;

import com.letearth.member.domain.MemberVO;

public interface MemberDAO {

	public void memberJoin(MemberVO vo);

	public MemberVO memberLogin(MemberVO vo);

}
