package com.spring.vo;

public class RealBuyVO {

	String buylist_compose,buyerName,email,email1,email2,address,addressMore,hp,hp1,hp2,hp3,mdate,bid,id,realPrice;
	String ptitle,tot_price,pmsphoto,total_count;
	int rno;
	


	public String getPtitle() {
		return ptitle;
	}

	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}

	public String getTot_price() {
		return tot_price;
	}

	public void setTot_price(String tot_price) {
		this.tot_price = tot_price;
	}

	public String getPmsphoto() {
		return pmsphoto;
	}

	public void setPmsphoto(String pmsphoto) {
		this.pmsphoto = pmsphoto;
	}

	public String getTotal_count() {
		return total_count;
	}

	public void setTotal_count(String total_count) {
		this.total_count = total_count;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getRealPrice() {
		return realPrice;
	}

	public void setRealPrice(String realPrice) {
		this.realPrice = realPrice;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getBid() {
		return bid;
	}

	public void setBid(String bid) {
		this.bid = bid;
	}

	public String getMdate() {
		return mdate;
	}

	public void setMdate(String mdate) {
		this.mdate = mdate;
	}

	public String getBuylist_compose() {
		return buylist_compose;
	}

	public void setBuylist_compose(String buylist_compose) {
		this.buylist_compose = buylist_compose;
	}

	public String getBuyerName() {
		return buyerName;
	}

	public void setBuyerName(String buyerName) {
		this.buyerName = buyerName;
	}

	public String getEmail() {
		 String str="";
		   if(email1 != null) {
			   str = email1 + "@" + email2 ;
		   }else {
			   str = email;
			  }
			  return str;
		}
		

	public void setEmail(String email) {
		this.email = email;
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddressMore() {
		return addressMore;
	}

	public void setAddressMore(String addressMore) {
		this.addressMore = addressMore;
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
	
}
