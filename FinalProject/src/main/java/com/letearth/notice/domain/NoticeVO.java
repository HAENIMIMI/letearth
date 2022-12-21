package com.letearth.notice.domain;

import java.sql.Timestamp;

import lombok.Data;

@Data
public class NoticeVO {
	private int notice_no;
	private String member_id;
	private int notice_cat;
	private int notice_middle;
	private String notice_title;
	private String notice_content;
	private String notice_reply;
	private String notice_file;
	private Timestamp notice_date;
	private String notice_pw;
	private int notice_re_ref;
	private int notice_re_lev;
	private int notice_re_seq;
	
}
