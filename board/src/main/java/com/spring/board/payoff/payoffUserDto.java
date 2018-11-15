package com.spring.board.payoff;

public class payoffUserDto {
	private int	    pay_u_uid;
	private int	    pay_m_uid;
	private int	    u_uid;
	private String	one_meal;
	private int	    one_amount;
	private String	two_meal;
	private int	    two_amount;
	private String	tre_meal;
	private int	    tre_amount;
	private String	for_meal;
	private int	    for_amount;
	private String	fiv_meal;
	private int	    fiv_amount;
	private int	    user_total_amount;
	private String	remark;
	
	private String	name;
	private String  rida;

	public String getRida() {
		return rida;
	}

	public void setRida(String rida) {
		this.rida = rida;
	}

	public int getPay_u_uid() {
		return pay_u_uid;
	}

	public void setPay_u_uid(int pay_u_uid) {
		this.pay_u_uid = pay_u_uid;
	}

	public int getPay_m_uid() {
		return pay_m_uid;
	}

	public void setPay_m_uid(int pay_m_uid) {
		this.pay_m_uid = pay_m_uid;
	}

	public int getU_uid() {
		return u_uid;
	}

	public void setU_uid(int u_uid) {
		this.u_uid = u_uid;
	}

	public String getOne_meal() {
		return one_meal;
	}

	public void setOne_meal(String one_meal) {
		this.one_meal = one_meal;
	}

	public int getOne_amount() {
		return one_amount;
	}

	public void setOne_amount(int one_amount) {
		this.one_amount = one_amount;
	}

	public String getTwo_meal() {
		return two_meal;
	}

	public void setTwo_meal(String two_meal) {
		this.two_meal = two_meal;
	}

	public int getTwo_amount() {
		return two_amount;
	}

	public void setTwo_amount(int two_amount) {
		this.two_amount = two_amount;
	}

	public String getTre_meal() {
		return tre_meal;
	}

	public void setTre_meal(String tre_meal) {
		this.tre_meal = tre_meal;
	}

	public int getTre_amount() {
		return tre_amount;
	}

	public void setTre_amount(int tre_amount) {
		this.tre_amount = tre_amount;
	}

	public String getFor_meal() {
		return for_meal;
	}

	public void setFor_meal(String for_meal) {
		this.for_meal = for_meal;
	}

	public int getFor_amount() {
		return for_amount;
	}

	public void setFor_amount(int for_amount) {
		this.for_amount = for_amount;
	}

	public String getFiv_meal() {
		return fiv_meal;
	}

	public void setFiv_meal(String fiv_meal) {
		this.fiv_meal = fiv_meal;
	}

	public int getFiv_amount() {
		return fiv_amount;
	}

	public void setFiv_amount(int fiv_amount) {
		this.fiv_amount = fiv_amount;
	}

	public int getUser_total_amount() {
		return user_total_amount;
	}

	public void setUser_total_amount(int user_total_amount) {
		this.user_total_amount = user_total_amount;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "payoffUserDto [pay_u_uid=" + pay_u_uid + ", pay_m_uid=" + pay_m_uid + ", u_uid=" + u_uid + ", one_meal="
				+ one_meal + ", one_amount=" + one_amount + ", two_meal=" + two_meal + ", two_amount=" + two_amount
				+ ", tre_meal=" + tre_meal + ", tre_amount=" + tre_amount + ", for_meal=" + for_meal + ", for_amount="
				+ for_amount + ", fiv_meal=" + fiv_meal + ", fiv_amount=" + fiv_amount + ", user_total_amount="
				+ user_total_amount + ", remark=" + remark + ", name=" + name + ", rida=" + rida + ", getRida()="
				+ getRida() + ", getPay_u_uid()=" + getPay_u_uid() + ", getPay_m_uid()=" + getPay_m_uid()
				+ ", getU_uid()=" + getU_uid() + ", getOne_meal()=" + getOne_meal() + ", getOne_amount()="
				+ getOne_amount() + ", getTwo_meal()=" + getTwo_meal() + ", getTwo_amount()=" + getTwo_amount()
				+ ", getTre_meal()=" + getTre_meal() + ", getTre_amount()=" + getTre_amount() + ", getFor_meal()="
				+ getFor_meal() + ", getFor_amount()=" + getFor_amount() + ", getFiv_meal()=" + getFiv_meal()
				+ ", getFiv_amount()=" + getFiv_amount() + ", getUser_total_amount()=" + getUser_total_amount()
				+ ", getRemark()=" + getRemark() + ", getName()=" + getName() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
}
