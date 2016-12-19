package com.xhc.blog.entity;

import java.util.Date;

public class TabPhoto {
	private int id;
	private int Pclass;
	private String Pname;
	private String Ppic;
	private String Pinfo;
	private Date Pdate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPclass() {
		return Pclass;
	}
	public void setPclass(int pclass) {
		Pclass = pclass;
	}
	public String getPname() {
		return Pname;
	}
	public void setPname(String pname) {
		Pname = pname;
	}
	public String getPpic() {
		return Ppic;
	}
	public void setPpic(String ppic) {
		Ppic = ppic;
	}
	public String getPinfo() {
		return Pinfo;
	}
	public void setPinfo(String pinfo) {
		Pinfo = pinfo;
	}
	public Date getPdate() {
		return Pdate;
	}
	public void setPdate(Date pdate) {
		Pdate = pdate;
	}

}
