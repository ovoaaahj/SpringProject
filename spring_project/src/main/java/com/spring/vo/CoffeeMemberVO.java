package com.spring.vo;

public class CoffeeMemberVO {
	int rno;
	String name, id, pass, addr1,addr2,addr,email, email_agr, hp1, hp2, hp3, hp, age, mdate;
	
	
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getAddr() {	
		String str ="";
		if(addr1 != null) {
			str = getAddr1() + " " + getAddr2();
		}else {
			str = addr;
		}
		return str;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEmail_agr() {
		return email_agr;
	}
	public void setEmail_agr(String email_agr) {
		this.email_agr = email_agr;
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
	 String str="";
	   if(hp1 != null) {
		   str = hp1 + "-" + hp2 + "-" + hp3 ;
	   }else {
		   str = hp;
		  }
		  return str;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	
	
}
