package com.xhc.blog.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.xhc.blog.common.PageParam;
import com.xhc.blog.entity.TabPhoto;
import com.xhc.blog.service.PhotoService;

@Controller

public class PhotoController {
	@Resource
	PhotoService photoService;

	/*
	 * 分页查询管理图片
	 */
	@RequestMapping(value = "managerPhoto")
	public String queryAllPhoto(HttpServletRequest request) {
		String currPageStr = request.getParameter("page");
		int currPage = 1;
		if (currPageStr != null) {
			currPage = Integer.parseInt(currPageStr);
		}
		int rowCount = photoService.getRowCount();

		List<TabPhoto> photo = photoService.queryAllPhoto((currPage - 1) * PageParam.getPageSize(),
				PageParam.getPageSize());
		if (!photo.isEmpty()) {
			PageParam pageParam = new PageParam();
			pageParam.setRowCount(rowCount);
			if (pageParam.getTotalPage() < currPage) {
				currPage = pageParam.getTotalPage();
			}
			pageParam.setCurrPage(currPage);
			request.setAttribute("pageParam", pageParam);
			request.setAttribute("photo", photo);
			return "managerPhoto";
		} else {
			return "";
		}
	}

	/*
	 * 根据图片分类分页查询图片
	 */
	@RequestMapping(value = "photo")
	public String pageQuery(HttpServletRequest request) {
		String photo_class = request.getParameter("pclass");
		String currPageStr = request.getParameter("page");
		if (currPageStr == null) {
			currPageStr = "1";
		}
		int currPage = Integer.parseInt(currPageStr);
		if (photo_class == null) {
			photo_class = "1";
		}
		int rowCount = photoService.getCountByPclass(photo_class);
		List<TabPhoto> photos = photoService.queryPhotoByPhoto_class(photo_class,
				(currPage - 1) * PageParam.getPageSize(), PageParam.getPageSize());
		switch (photo_class) {
		case "1":
			if (photos != null) {
				pagePhoto(request, rowCount, currPage, photos);
				return "photo";
			}
			break;
		case "2":
			if (photos != null) {
				pagePhoto(request, rowCount, currPage, photos);
				return "photo";
			}
			break;
		case "3":
			if (photos != null) {
				pagePhoto(request, rowCount, currPage, photos);
				return "photo";
			}
			break;
		default:
			break;
		}
		return "index";
	}

	private void pagePhoto(HttpServletRequest request, int rowCount, int currPage, List<TabPhoto> photos) {
		PageParam pageParam = new PageParam();
		pageParam.setRowCount(rowCount);
		if (pageParam.getTotalPage() < currPage) {
			currPage = pageParam.getTotalPage();
		}
		pageParam.setCurrPage(currPage);
		request.setAttribute("pageParam", pageParam);
		request.setAttribute("photos", photos);
	}

	/*
	 * 跳转到修改图片页面
	 */
	@RequestMapping(value = "toUpdatePhoto")
	public String updatePhoto(@RequestParam(value = "id") int id, HttpServletRequest request) {
		TabPhoto photo = photoService.queryOnePhoto(id);
		request.setAttribute("photo", photo);
		return "toUpdatePhoto";
	}

	/*
	 * 修改图片
	 */
	@RequestMapping(value = "updatePhoto")
	public String updatePhoto(@RequestParam("Ppic") MultipartFile imageFile, HttpServletRequest request) {
		String pclass = request.getParameter("Pclass");
		String pname = request.getParameter("Pname");
		String pinfo = request.getParameter("Pinfo");
		String pid = request.getParameter("id");
		int id = Integer.parseInt(pid);
		String uploadUrl = request.getSession().getServletContext().getRealPath("/") + "image/";
		String filename = imageFile.getOriginalFilename();
		File dir = new File(uploadUrl);
		if (!dir.exists()) {
			dir.mkdirs();
		}
		File targetFile = new File(uploadUrl + filename);
		System.out.println(targetFile);
		if (!targetFile.exists()) {
			try {
				targetFile.createNewFile();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		try {
			imageFile.transferTo(targetFile);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		TabPhoto photo = new TabPhoto();
		photo.setId(id);
		photo.setPclass(Integer.parseInt(pclass));
		photo.setPinfo(pinfo);
		photo.setPname(pname);
		photo.setPpic(filename);
		photo.setPdate(new Date());
		boolean flag = photoService.updatePhoto(photo);
		if (flag) {
			return "updatePhoto_success";
		} else {
			return "";
		}
	}

	/*
	 * 添加图片
	 */
	@RequestMapping(value = "toAddPhoto")
	public String toAddPhoto(HttpServletRequest request) {
		return "toAddPhoto";
	}

	/*
	 * 添加图片
	 */
	@RequestMapping(value = "addPhoto")
	public String addPhoto(@RequestParam("Ppic") MultipartFile imageFile, HttpServletRequest request) {
		String pclass = request.getParameter("Pclass");
		String pname = request.getParameter("Pname");
		String pinfo = request.getParameter("Pinfo");
		String uploadUrl = request.getSession().getServletContext().getRealPath("/") + "image/";
		String filename = imageFile.getOriginalFilename();
		File dir = new File(uploadUrl);
		if (!dir.exists()) {
			dir.mkdirs();
		}
		File targetFile = new File(uploadUrl + filename);
		System.out.println(targetFile);
		if (!targetFile.exists()) {
			try {
				targetFile.createNewFile();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		try {
			imageFile.transferTo(targetFile);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		TabPhoto photo = new TabPhoto();
		photo.setPclass(Integer.parseInt(pclass));
		photo.setPinfo(pinfo);
		photo.setPname(pname);
		photo.setPpic(filename);
		photo.setPdate(new Date());
		boolean flag = photoService.addPhoto(photo);
		if (flag) {
			return "addPhoto_success";
		} else {
			return "toAddPhoto";
		}
	}

	/*
	 * 删除图片
	 */
	@RequestMapping(value = "deletePhoto")
	public String deletePhoto(HttpServletRequest request) {
		String pid = request.getParameter("id");
		int id = Integer.parseInt(pid);
		boolean flag = photoService.deletePhoto(id);
		if (flag) {
			return "deletePhoto_success";
		} else {
			return "managerArtitle";
		}
	}
}
