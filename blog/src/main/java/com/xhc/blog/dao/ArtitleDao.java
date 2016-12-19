package com.xhc.blog.dao;

import java.util.List;

import com.xhc.blog.entity.TabArtitle;
import com.xhc.blog.entity.TabArtitleCommend;
import com.xhc.blog.entity.TabPhoto;

public interface ArtitleDao {
	//分页查询文章
	List<TabArtitle> queryAllArtitle(int start, int cnt);
	//获取文章的总记录数
	int getArtitleRowCount();
	//获取一条文章信息
	TabArtitle queryOneArtitle(int id);
	//更新文章
	int updateArtitle(TabArtitle artitle);
	//添加文章
	boolean addArtitle(TabArtitle artitle);
	//删除文章
	boolean deleteArtitle(int id);
	//添加评论
	int addComment(TabArtitleCommend comment);
	//
	int getCountByLikeContent();
	//
	List<TabArtitle> queryByContent(String query_content);
	//
	List<TabArtitle> queryByContent(String query_content, int i, int pageSize);

}
