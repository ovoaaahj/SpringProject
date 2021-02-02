package com.spring.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class ProductVO {
	String pid,pmphoto,pmsphoto,pcphoto,pcsphoto,psub1,psub1s,psub2,psub2s,psub3,
			psub3s,ptitle,phash,pprice100,pprice200,pprice500,pprice1000 ,pcontent,pcontent2,pdate,pkind1,pkind2,phphoto,phsphoto;
	int rno;
	

	public String getPhphoto() {
		return phphoto;
	}

	public void setPhphoto(String phphoto) {
		this.phphoto = phphoto;
	}

	public String getPhsphoto() {
		return phsphoto;
	}

	public void setPhsphoto(String phsphoto) {
		this.phsphoto = phsphoto;
	}


	
	CommonsMultipartFile file1,file2;
	
	
	public String getPprice200() {
		return pprice200;
	}

	public void setPprice200(String pprice200) {
		this.pprice200 = pprice200;
	}

	public String getPprice500() {
		return pprice500;
	}

	public void setPprice500(String pprice500) {
		this.pprice500 = pprice500;
	}

	public String getPprice1000() {
		return pprice1000;
	}

	public void setPprice1000(String pprice1000) {
		this.pprice1000 = pprice1000;
	}

	public CommonsMultipartFile getFile1() {
		return file1;
	}

	public void setFile1(CommonsMultipartFile file1) {
		this.file1 = file1;
	}

	public CommonsMultipartFile getFile2() {
		return file2;
	}

	public void setFile2(CommonsMultipartFile file2) {
		this.file2 = file2;
	}

	public int getRno() {
		return rno;
	}

	public void setRno(int rno) {
		this.rno = rno;
	}

	public String getPid() {
		return pid;
	}

	public String getPtitle() {
		return ptitle;
	}

	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}

	public String getPkind1() {
		return pkind1;
	}

	public void setPkind1(String pkind1) {
		this.pkind1 = pkind1;
	}

	public String getPkind2() {
		return pkind2;
	}

	public void setPkind2(String pkind2) {
		this.pkind2 = pkind2;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getPmphoto() {
		return pmphoto;
	}

	public void setPmphoto(String pmphoto) {
		this.pmphoto = pmphoto;
	}

	public String getPmsphoto() {
		return pmsphoto;
	}

	public void setPmsphoto(String pmsphoto) {
		this.pmsphoto = pmsphoto;
	}

	public String getPcphoto() {
		return pcphoto;
	}

	public void setPcphoto(String pcphoto) {
		this.pcphoto = pcphoto;
	}

	public String getPcsphoto() {
		return pcsphoto;
	}

	public void setPcsphoto(String pcsphoto) {
		this.pcsphoto = pcsphoto;
	}

	public String getPsub1() {
		return psub1;
	}

	public void setPsub1(String psub1) {
		this.psub1 = psub1;
	}

	public String getPsub1s() {
		return psub1s;
	}

	public void setPsub1s(String psub1s) {
		this.psub1s = psub1s;
	}

	public String getPsub2() {
		return psub2;
	}

	public void setPsub2(String psub2) {
		this.psub2 = psub2;
	}

	public String getPsub2s() {
		return psub2s;
	}

	public void setPsub2s(String psub2s) {
		this.psub2s = psub2s;
	}

	public String getPsub3() {
		return psub3;
	}

	public void setPsub3(String psub3) {
		this.psub3 = psub3;
	}

	public String getPsub3s() {
		return psub3s;
	}

	public void setPsub3s(String psub3s) {
		this.psub3s = psub3s;
	}

	public String getPhash() {
		return phash;
	}

	public void setPhash(String phash) {
		this.phash = phash;
	}

	public String getPprice100() {
		return pprice100;
	}

	public void setPprice100(String pprice) {
		this.pprice100 = pprice;
	}

	public String getPcontent() {
		return pcontent;
	}

	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}

	public String getPcontent2() {
		return pcontent2;
	}

	public void setPcontent2(String pcontent2) {
		this.pcontent2 = pcontent2;
	}

	public String getPdate() {
		return pdate;
	}

	public void setPdate(String pdate) {
		this.pdate = pdate;
	}
	
	
}
