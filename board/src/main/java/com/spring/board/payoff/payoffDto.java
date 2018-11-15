package com.spring.board.payoff;

import java.sql.Date;

public class payoffDto {
	
	private int pay_m_uid;
	private String status;
	private String reg_id;
	private Date reg_date;
	private String mod_id;
	private Date mod_date;
	private int total_amount;
	private String pay_title;
	
	private int    no;
	private String one_place;
	private int    one_amount;
	private String two_place;
	private int    two_amount;
	private String tre_place;
	private int    tre_amount;
	private String for_place;
	private int    for_amount;
	private String fiv_place;
	private int    fiv_amount;

	
	private int pay_user_count;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getOne_place() {
		return one_place;
	}
	public void setOne_place(String one_place) {
		this.one_place = one_place;
	}
	public int getOne_amount() {
		return one_amount;
	}
	public void setOne_amount(int one_amount) {
		this.one_amount = one_amount;
	}
	public String getTwo_place() {
		return two_place;
	}
	public void setTwo_place(String two_place) {
		this.two_place = two_place;
	}
	public int getTwo_amount() {
		return two_amount;
	}
	public void setTwo_amount(int two_amount) {
		this.two_amount = two_amount;
	}
	public String getTre_place() {
		return tre_place;
	}
	public void setTre_place(String tre_place) {
		this.tre_place = tre_place;
	}
	public int getTre_amount() {
		return tre_amount;
	}
	public void setTre_amount(int tre_amount) {
		this.tre_amount = tre_amount;
	}
	public String getFor_place() {
		return for_place;
	}
	public void setFor_place(String for_place) {
		this.for_place = for_place;
	}
	public int getFor_amount() {
		return for_amount;
	}
	public void setFor_amount(int for_amount) {
		this.for_amount = for_amount;
	}
	public String getFiv_place() {
		return fiv_place;
	}
	public void setFiv_place(String fiv_place) {
		this.fiv_place = fiv_place;
	}
	public int getFiv_amount() {
		return fiv_amount;
	}
	public void setFiv_amount(int fiv_amount) {
		this.fiv_amount = fiv_amount;
	}
	public int getPay_user_count() {
		return pay_user_count;
	}
	public void setPay_user_count(int pay_user_count) {
		this.pay_user_count = pay_user_count;
	}
	public String getPay_title() {
		return pay_title;
	}
	public void setPay_title(String pay_title) {
		this.pay_title = pay_title;
	}
	public int getPay_m_uid() {
		return pay_m_uid;
	}
	public void setPay_m_uid(int pay_m_uid) {
		this.pay_m_uid = pay_m_uid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getReg_id() {
		return reg_id;
	}
	public void setReg_id(String reg_id) {
		this.reg_id = reg_id;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public String getMod_id() {
		return mod_id;
	}
	public void setMod_id(String mod_id) {
		this.mod_id = mod_id;
	}
	public Date getMod_date() {
		return mod_date;
	}
	public void setMod_date(Date mod_date) {
		this.mod_date = mod_date;
	}
	public int getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(int total_amount) {
		this.total_amount = total_amount;
	}
	
	@Override
	public String toString() {
		return "payoffDto [pay_m_uid=" + pay_m_uid + ", status=" + status + ", reg_id=" + reg_id + ", reg_date="
				+ reg_date + ", mod_id=" + mod_id + ", mod_date=" + mod_date + ", total_amount=" + total_amount + "]";
	}
	
}
