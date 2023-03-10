package com.letearth.openbank.domain;

import lombok.Data;

@Data
public class DepositVO {
	
	private String tran_no;
	private String bank_tran_id;
	private String bank_tran_date;
	private String bank_code_tran;
	private String bank_rsp_code;
	private String bank_rsp_message;
	
	private String fintech_use_num;
	private String account_alias;
	private String bank_code_std;
	private String bank_code_sub;
	private String bank_name;
	private String savings_bank_name;
	private String account_num_masked;
	private String account_holder_name; 
	
	//요청
	private String print_content;
	private String tran_amt; 
	private String cms_num;
	private String req_client_fintech_use_num; //핀테크이용번호
	
	private String req_client_name; //요청고객성명
	private String req_client_bank_code;
	private String req_client_account_num;
	
	private String req_client_num; //요청고객회원번호
	private String transfer_purpose; //이체용도 TR
	
}
