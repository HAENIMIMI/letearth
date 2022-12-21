package com.letearth.member.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class MemberVO {
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_phone;
	private String member_email;
	private Timestamp member_create_dt;
	private String member_link;			/* 로그인 연동 여부 */
	private Integer report_count;
	private Integer member_status;		/* 0. 구매회원, 1. 판매회원, 2. 관리자*/
	private String member_profile;
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public Timestamp getMember_create_dt() {
		return member_create_dt;
	}
	public void setMember_create_dt(Timestamp member_create_dt) {
		this.member_create_dt = member_create_dt;
	}
	public String getMember_link() {
		return member_link;
	}
	public void setMember_link(String member_link) {
		this.member_link = member_link;
	}
	public Integer getReport_count() {
		return report_count;
	}
	public void setReport_count(Integer report_count) {
		this.report_count = report_count;
	}
	public Integer getMember_status() {
		return member_status;
	}
	public void setMember_status(Integer member_status) {
		this.member_status = member_status;
	}
	public String getMember_profile() {
		return member_profile;
	}
	public void setMember_profile(String member_profile) {
		this.member_profile = member_profile;
	}
	
	
}
