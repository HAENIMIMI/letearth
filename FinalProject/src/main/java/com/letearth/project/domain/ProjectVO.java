package com.letearth.project.domain;

import lombok.Data;

@Data
public class ProjectVO {
	
	private int project_no;
	private String member_id;
	private int category_no;
	private String project_title;
	private String project_summary;
	private int project_gprice;
	private int project_tprice;
	private String project_start_dt;
	private String project_end_dt;
	private String project_file;
	private String project_thum;
	private int project_count;
	private String project_story;
	private String project_refcon;
	private String hashtag;
	private int project_status;
	private String project_cr_dt;
	private String delivery_date;
	private String partner_phone;
	private String phone_yn;
	private String partner_email;
	private String partner_bank;
	private String partner_account;
	private String partner_acholder;
	private String cat_name;


}
