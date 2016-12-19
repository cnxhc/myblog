package com.xhc.blog.entity;

import java.util.Date;

public class TabArtitleCommend {
	private int id;
	private int Cid;
	private TabArtitle tab_artitle;
	private String Cname;
	private String Ccontent;
	private Date Cdate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCid() {
		return Cid;
	}
	public void setCid(int cid) {
		Cid = cid;
	}
	public TabArtitle getTab_artitle() {
		return tab_artitle;
	}
	public void setTab_artitle(TabArtitle tab_artitle) {
		this.tab_artitle = tab_artitle;
	}
	public String getCname() {
		return Cname;
	}
	public void setCname(String cname) {
		Cname = cname;
	}
	public String getCcontent() {
		return Ccontent;
	}
	public void setCcontent(String ccontent) {
		Ccontent = ccontent;
	}
	public Date getCdate() {
		return Cdate;
	}
	public void setCdate(Date cdate) {
		Cdate = cdate;
	}
	
}
