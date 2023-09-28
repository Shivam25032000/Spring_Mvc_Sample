package com.fss.model;

import org.springframework.stereotype.Component;

@Component
public class merchant {

	private String mcn;
	private String mname;
	private String madd;
	private String mno;
	private String memail;
	private String mcountry;
	private String mregion;
	private String mstate;
	private String mcity;
	private String mstatus;

	public String getMcn() {
		return mcn;
	}

	public void setMcn(String mcn) {
		this.mcn = mcn;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMadd() {
		return madd;
	}

	public void setMadd(String madd) {
		this.madd = madd;
	}

	public String getMno() {
		return mno;
	}

	public void setMno(String mno) {
		this.mno = mno;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getMcountry() {
		return mcountry;
	}

	public void setMcountry(String mcountry) {
		this.mcountry = mcountry;
	}

	public String getMregion() {
		return mregion;
	}

	public void setMregion(String mregion) {
		this.mregion = mregion;
	}

	public String getMstate() {
		return mstate;
	}

	public void setMstate(String mstate) {
		this.mstate = mstate;
	}

	public String getMcity() {
		return mcity;
	}

	public void setMcity(String mcity) {
		this.mcity = mcity;
	}

	public String getMstatus() {
		return mstatus;
	}

	public void setMstatus(String mstatus) {
		this.mstatus = mstatus;
	}

	@Override
	public String toString() {
		return "merchant [mcn=" + mcn + ", mname=" + mname + ", madd=" + madd + ", mno=" + mno + ", memail=" + memail
				+ ", mcountry=" + mcountry + ", mregion=" + mregion + ", mstate=" + mstate + ", mcity=" + mcity
				+ ", mstatus=" + mstatus + "]";
	}

}
