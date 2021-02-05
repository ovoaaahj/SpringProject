package com.spring.vo;

import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class TestEventVO {
	int rno, ehits;

	String eid, etitle, econtent, efile_t, esfile_t, efile, esfile, edate, edate2, eend;
	CommonsMultipartFile file1;
	CommonsMultipartFile file2;
	

	public String getEend() {
		return eend;
	}
	public void setEend(String eend) {
		this.eend = eend;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getEhits() {
		return ehits;
	}
	public void setEhits(int ehits) {
		this.ehits = ehits;
	}
	public String getEid() {
		return eid;
	}
	public void setEid(String eid) {
		this.eid = eid;
	}
	public String getEtitle() {
		return etitle;
	}
	public void setEtitle(String etitle) {
		this.etitle = etitle;
	}
	public String getEcontent() {
		return econtent;
	}
	public void setEcontent(String econtent) {
		this.econtent = econtent;
	}
	public String getEfile_t() {
		return efile_t;
	}
	public void setEfile_t(String efile_t) {
		this.efile_t = efile_t;
	}
	public String getEsfile_t() {
		return esfile_t;
	}
	public void setEsfile_t(String esfile_t) {
		this.esfile_t = esfile_t;
	}
	public String getEfile() {
		return efile;
	}
	public void setEfile(String efile) {
		this.efile = efile;
	}
	public String getEsfile() {
		return esfile;
	}
	public void setEsfile(String esfile) {
		this.esfile = esfile;
	}
	public String getEdate() {
		return edate;
	}
	public void setEdate(String edate) {
		this.edate = edate;
	}
	public String getEdate2() {
		return edate2;
	}
	public void setEdate2(String edate2) {
		this.edate2 = edate2;
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
	
	
	
}
