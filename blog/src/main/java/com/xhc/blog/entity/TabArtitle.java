package com.xhc.blog.entity;

import java.util.Date;
import java.util.List;

public class TabArtitle {
	private int id;
	private List<TabArtitleCommend> tab_artitle_commend;
	private int Aclass;
	private String Atitle;
	private String Acontent;
	private Date Adate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public List<TabArtitleCommend> getTab_artitle_commend() {
		return tab_artitle_commend;
	}
	public void setTab_artitle_commend(List<TabArtitleCommend> tab_artitle_commend) {
		this.tab_artitle_commend = tab_artitle_commend;
	}
	public int getAclass() {
		return Aclass;
	}
	public void setAclass(int aclass) {
		Aclass = aclass;
	}
	public String getAtitle() {
		return Atitle;
	}
	public void setAtitle(String atitle) {
		Atitle = atitle;
	}
	public String getAcontent() {
		return Acontent;
	}
	public void setAcontent(String acontent) {
		Acontent = acontent;
	}
	public Date getAdate() {
		return Adate;
	}
	public void setAdate(Date adate) {
		Adate = adate;
	}
	
}
