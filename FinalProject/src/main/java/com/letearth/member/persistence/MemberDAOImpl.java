package com.letearth.member.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.letearth.member.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String NAMESPACE = "com.letearth.mapper.memberMapper";
	
	@Override
	public void memberJoin(MemberVO vo) {
		sqlSession.insert(NAMESPACE + ".insertMember", vo);
	}

	@Override
	public MemberVO memberLogin(MemberVO vo) {
		
		return sqlSession.selectOne(NAMESPACE + ".loginMember", vo);
	}

}
