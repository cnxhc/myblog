package com.xhc.blog.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xhc.blog.common.PageParam;
import com.xhc.blog.entity.TabArtitle;
import com.xhc.blog.service.ArtitleService;

@Controller
public class IndexController {
	@Resource
	ArtitleService artitleService;
	/*
	 * 首页
	 */
	@RequestMapping(value = "index")
	public String indexPage(HttpServletRequest request) {
		String currPageStr = request.getParameter("page");
		int currPage = 1;
		if (currPageStr != null) {
			currPage = Integer.parseInt(currPageStr);
		}
		int rowCount = artitleService.getArtitleRowCount();
		List<TabArtitle> artitle = artitleService.queryAllArtitle((currPage - 1) * PageParam.getPageSize(),
				PageParam.getPageSize());
		if (!artitle.isEmpty()) {
			PageParam pageParam = new PageParam();
			pageParam.setRowCount(rowCount);
			if (pageParam.getTotalPage() < currPage) {
				currPage = pageParam.getTotalPage();
			}
			pageParam.setCurrPage(currPage);
			request.setAttribute("pageParam", pageParam);
			request.setAttribute("artitle", artitle);
			return "index";
		} else {
			return "";
		}
	}
	/*
	 * 查询文章与评论
	 */
	@RequestMapping(value = "queryAndComment")
	public String queryAndComment(HttpServletRequest request) {
		return "queryAndComment";
	}
	/*
	 * 关于页面
	 */
	@RequestMapping(value = "about")
	public String aboutPage(HttpServletRequest request) {
		return "about";
	}

}
