package com.xhc.blog.dao;

import java.util.List;

import com.xhc.blog.entity.TabArtitle;
import com.xhc.blog.entity.TabArtitleCommend;
import com.xhc.blog.entity.TabPhoto;

public interface PhotoDao {

	

	List<TabPhoto> selectPhotoByPhoto_class(String photo_class, int start, int cnt);
	//分页查询相册
	List<TabPhoto> queryAllPhoto(int start, int cnt);

	TabPhoto queryOnePhoto(int id);

	boolean updatePhoto(TabPhoto photo);

	boolean addPhoto(TabPhoto photo);

	boolean deletePhoto(int id);
	//获取相册的总记录数
	int getRowCount();
	//通过相册分类获取记录数
	int getCountByPclass(String photo_class);
}
