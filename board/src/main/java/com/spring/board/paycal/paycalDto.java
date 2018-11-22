package com.spring.board.paycal;

public class paycalDto {
	
	private int pay_m_uid;
	private int no;
	private int one_anju;
	private int one_alcol;
	private int two_anju;
	private int two_alcol;
	private int tre_anju;
	private int tre_alcol;
	private int for_anju;
	private int for_alcol;
	private int fiv_anju;
	private int fiv_alcol;
	
	private String type;
	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getPay_m_uid() {
		return pay_m_uid;
	}
	public void setPay_m_uid(int pay_m_uid) {
		this.pay_m_uid = pay_m_uid;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getOne_anju() {
		return one_anju;
	}
	public void setOne_anju(int one_anju) {
		this.one_anju = one_anju;
	}
	public int getOne_alcol() {
		return one_alcol;
	}
	public void setOne_alcol(int one_alcol) {
		this.one_alcol = one_alcol;
	}
	public int getTwo_anju() {
		return two_anju;
	}
	public void setTwo_anju(int two_anju) {
		this.two_anju = two_anju;
	}
	public int getTwo_alcol() {
		return two_alcol;
	}
	public void setTwo_alcol(int two_alcol) {
		this.two_alcol = two_alcol;
	}
	public int getTre_anju() {
		return tre_anju;
	}
	public void setTre_anju(int tre_anju) {
		this.tre_anju = tre_anju;
	}
	public int getTre_alcol() {
		return tre_alcol;
	}
	public void setTre_alcol(int tre_alcol) {
		this.tre_alcol = tre_alcol;
	}
	public int getFor_anju() {
		return for_anju;
	}
	public void setFor_anju(int for_anju) {
		this.for_anju = for_anju;
	}
	public int getFor_alcol() {
		return for_alcol;
	}
	public void setFor_alcol(int for_alcol) {
		this.for_alcol = for_alcol;
	}
	public int getFiv_anju() {
		return fiv_anju;
	}
	public void setFiv_anju(int fiv_anju) {
		this.fiv_anju = fiv_anju;
	}
	public int getFiv_alcol() {
		return fiv_alcol;
	}
	public void setFiv_alcol(int fiv_alcol) {
		this.fiv_alcol = fiv_alcol;
	}
	
	@Override
	public String toString() {
		return "paycalDto [pay_m_uid=" + pay_m_uid + ", no=" + no + ", one_anju=" + one_anju + ", one_alcol="
				+ one_alcol + ", two_anju=" + two_anju + ", two_alcol=" + two_alcol + ", tre_anju=" + tre_anju
				+ ", tre_alcol=" + tre_alcol + ", for_anju=" + for_anju + ", for_alcol=" + for_alcol + ", fiv_anju="
				+ fiv_anju + ", fiv_alcol=" + fiv_alcol + "]";
	}
}
