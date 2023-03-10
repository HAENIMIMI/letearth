package com.letearth.admin.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class MemOrdVO { // -> 선택하면 해당 주문서 볼 수 있도록?
	
	private String mem_id;
	private String pro_title; // 프로젝트 이름
	private int reward_no; // 리워드 번호
	private String reward_title; // 리워드이름
	private int order_no; // 주문번호 
	private int order_status; // 주문상태
	private int total_price; // 총 결제금액
	private Timestamp order_date;
	private int pro_tp;
	private int pro_gp;
	private String shipping_no;
	
	
}
