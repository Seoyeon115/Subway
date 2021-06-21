package com.subway.vo;

public class MemberVO {
	int rno, choice;
	String email1, email2, email, pass, name, hp1, hp2, hp3, hp, post, addr, daddr,coupon1,coupon2,coupon3,mdate;
	
	public String getCoupon1() {
		return coupon1;
	}

	public void setCoupon1(String coupon1) {
		this.coupon1 = coupon1;
	}

	public String getCoupon2() {
		return coupon2;
	}

	public void setCoupon2(String coupon2) {
		this.coupon2 = coupon2;
	}

	public String getCoupon3() {
		return coupon3;
	}

	public void setCoupon3(String coupon3) {
		this.coupon3 = coupon3;
	}

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getEmail() {
		if(email1 != null) {
			email="";
			email = email1 + "@" + email2;
		}
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getHp1() {
		return hp1;
	}

	public void setHp1(String hp1) {
		this.hp1 = hp1;
	}

	public String getHp2() {
		return hp2;
	}

	public void setHp2(String hp2) {
		this.hp2 = hp2;
	}

	public String getHp3() {
		return hp3;
	}

	public void setHp3(String hp3) {
		this.hp3 = hp3;
	}

	public String getHp() {
		String str = "";
		if(hp1 != null) {
			str = hp1 + "-" + hp2 + "-" + hp3;
		}else {
			str = hp;
		}
		return str;
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String getPost() {
		return post;
	}

	public void setPost(String post) {
		this.post = post;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getDaddr() {
		return daddr;
	}

	public void setDaddr(String daddr) {
		this.daddr = daddr;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public int getChoice() {
		return choice;
	}

	public void setChoice(int choice) {
		this.choice = choice;
	}

	public String getMdate() {
		return mdate;
	}

	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	
	
	
}
