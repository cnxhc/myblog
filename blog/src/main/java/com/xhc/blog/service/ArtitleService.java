package com.xhc.blog.service;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xhc.blog.dao.ArtitleDao;
import com.xhc.blog.entity.TabArtitle;
import com.xhc.blog.entity.TabArtitleCommend;
@Service
public class ArtitleService {
	@Resource
	ArtitleDao dao;
	public List<TabArtitle> queryByContent(String query_content) {
		// TODO Auto-generated method stub
		List<TabArtitle> artitle = dao.queryByContent(query_content);
		return artitle;
	}

	public List<TabArtitle> queryAllArtitle(int start,int cnt) {
		List<TabArtitle> artitle=dao.queryAllArtitle(start,cnt);
		return artitle;
	}
	public int getArtitleRowCount() {
		int rowCount=dao.getArtitleRowCount();
		return rowCount;
	}
	public TabArtitle queryOneArtitle(int id) {
		TabArtitle artitle=dao.queryOneArtitle(id);
		return artitle;
	}
	public int updateArtitle(TabArtitle artitle) {
		int count=dao.updateArtitle(artitle);
		return count;
	}
	public boolean addArtitle(TabArtitle artitle) {
		boolean flag=dao.addArtitle(artitle);
		return flag;
	}
	public boolean deleteArtitle(int id) {
		boolean flag=dao.deleteArtitle(id);
		return flag;
	}
	//添加评论
	public int addComment(TabArtitleCommend comment) {
		// TODO Auto-generated method stub
		int count=dao.addComment(comment);
		return count;
	}

	public int getCountByLikeContent(String query_content) {
		int rowCount=dao.getCountByLikeContent();
		return rowCount;
	}

	public List<TabArtitle> queryByContent(String query_content, int i, int pageSize) {
		List<TabArtitle> artitle=dao.queryByContent(query_content,i,pageSize);
		return artitle;
	}
	
}
