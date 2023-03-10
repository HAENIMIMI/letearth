package com.letearth.order.service;

import java.util.List;

import com.letearth.member.domain.MemberVO;
import com.letearth.order.domain.OrderVO;
import com.letearth.prodetail.domain.ProDetailVO;
import com.letearth.project.domain.RewardVO;

public interface OrderService {
	
	// 프로젝트 1개 정보 조회
	public ProDetailVO proInfo(Integer pro_no) throws Exception;
	
	// 회원 한명 정보 조회
	public MemberVO memInfo(String mem_id) throws Exception;

	// 연락처 문자 인증
	public void authPhoneNumber(String phone, String authNum);
	
	// 리워드 리스트
	public List<RewardVO> rewardList(Integer pro_no) throws Exception;
	
	// 리워드 한개 조회
	public RewardVO getReward(Integer reward_no) throws Exception;
	
	// 회원 연락처 추가
	public Integer updateMemTel(MemberVO vo) throws Exception;
	
	// max 주문번호 조회
	public Integer maxOrderno() throws Exception;
	
	// 주문 완료
	public String insertOrder(OrderVO vo) throws Exception;
	
	// 리워드 수량 1개 차감
	public void rewardStock(int reward_no) throws Exception;
	
	// 프로젝트 총 금액 업데이트
	public void updateTp(OrderVO vo) throws Exception;
	
	// 주문번호로 주문정보 1개 조회
	public OrderVO orderInfo(String order_trade_num) throws Exception;
	
	// 후원만
	public OrderVO orderInfo2(String order_trade_num) throws Exception;
	
	// 주문취소요청
	public Integer orderCancel(String order_trade_num) throws Exception;
	
	// 배송지 변경
	public Integer shipChange(OrderVO vo) throws Exception;
}
