package com.xhc.blog.service;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xhc.blog.dao.PhotoDao;
import com.xhc.blog.entity.TabPhoto;
@Service
public class PhotoService {
	@Resource
	PhotoDao dao;
	public List<TabPhoto> queryAllPhoto(int start,int cnt) {
		List<TabPhoto> photo=dao.queryAllPhoto(start,cnt);
		return photo;
	}
	public TabPhoto queryOnePhoto(int id) {
		TabPhoto photo=dao.queryOnePhoto(id);
		return photo;
	}
	public boolean updatePhoto(TabPhoto photo) {
		boolean flag=dao.updatePhoto(photo);
		return flag;
	}
	public boolean addPhoto(TabPhoto photo) {
		boolean flag=dao.addPhoto(photo);
		return flag;
	}
	
	public boolean deletePhoto(int id) {
		boolean flag=dao.deletePhoto(id);
		return flag;
	}
	public int getRowCount() {
		// TODO Auto-generated method stub
		int rowCount=dao.getRowCount();
		return rowCount;
	}
	public List<TabPhoto> queryPhotoByPhoto_class(String photo_class,int start,int cnt) {
		// TODO Auto-generated method stub
		List<TabPhoto> photos = dao.selectPhotoByPhoto_class(photo_class,start,cnt);
		return photos;
	}
	public int getCountByPclass(String photo_class) {
		int count=dao.getCountByPclass(photo_class);
		return count;
	}
}
