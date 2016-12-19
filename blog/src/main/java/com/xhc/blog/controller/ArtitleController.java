package com.xhc.blog.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.xhc.blog.common.PageParam;
import com.xhc.blog.entity.TabArtitle;
import com.xhc.blog.entity.TabArtitleCommend;
import com.xhc.blog.service.ArtitleService;


@Controller
public class ArtitleController {
	@Resource
	ArtitleService artitleService;
	/*
	 * 根据部分内容模糊查询文章
	 */
	@RequestMapping(value = "query")
	public String queryByContent(HttpServletRequest request) {
		String query_content = request.getParameter("query_content");
		if (!query_content.equals("")) {
			List<TabArtitle> artitle = artitleService.queryByContent(query_content);
			if (!artitle.isEmpty()) {
				request.setAttribute("artitle", artitle);
				System.out.println(artitle.size());
				return "queryByContent_success";
			} else {
				return "fail";
			}
		}
		return "queryAndComment";
	}
	/*
	 * 分页查询并管理文章
	 */
	@RequestMapping(value="managerArtitle")
	public String managerArtitle(HttpServletRequest request){
		String currPageStr = request.getParameter("page");
		int currPage=1;
		if(currPageStr!=null){
			currPage=Integer.parseInt(currPageStr);
		}
		int rowCount=artitleService.getArtitleRowCount();
		List<TabArtitle> artitle = artitleService.queryAllArtitle((currPage-1)*PageParam.getPageSize(),
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
			return "managerArtitle";
		} else {
			return "";
		}
	}
	/*
	 * 查询一篇文章
	 */
	@RequestMapping(value="queryOneArtitle")
	public String queryOneArtitle(@RequestParam(value="id") int id,HttpServletRequest request){
		TabArtitle artitle=artitleService.queryOneArtitle(id);
		request.setAttribute("artitle", artitle);
		return "queryOneArtitle";
	}
	/*
	 * 更新文章
	 */
	@RequestMapping(value = "toUpdateArtitle")
	public String updateArtitle(@RequestParam(value = "id") int id, HttpServletRequest request) {
		TabArtitle artitle = artitleService.queryOneArtitle(id);
		request.setAttribute("artitle", artitle);
		return "toUpdateArtitle";
	}
	/*
	 * 修改文章
	 */
	@RequestMapping(value = "updateArtitle")
	public String updateArtitle(HttpServletRequest request) {
		String aclass = request.getParameter("Aclass");
		String atitle = request.getParameter("Atitle");
		String acontent = request.getParameter("Acontent");
		String aid = request.getParameter("id");
		int id = Integer.parseInt(aid);
		TabArtitle artitle = new TabArtitle();
		artitle.setId(id);
		artitle.setAclass(Integer.parseInt(aclass));
		artitle.setAtitle(atitle);
		artitle.setAcontent(acontent);
		artitle.setAdate(new Date());
		int count = artitleService.updateArtitle(artitle);
		if(count==1){
		return "updateArtitle_success";
		}else{
			return "";
		}
	}
	/*
	 * 跳转到添加文章页
	 */
	@RequestMapping(value = "toAddArtitle")
	public String toAddArtitle(HttpServletRequest request) {
		return "toAddArtitle";
	}
	/*
	 * 添加文章
	 */
	@RequestMapping(value = "addArtitle")
	public String addPhoto(HttpServletRequest request) {
		String aclass = request.getParameter("Aclass");
		String atitle = request.getParameter("Atitle");
		String acontent = request.getParameter("Acontent");
		TabArtitle artitle = new TabArtitle();
		artitle.setAclass(Integer.parseInt(aclass));
		artitle.setAtitle(atitle);
		artitle.setAcontent(acontent);
		artitle.setAdate(new Date());
		boolean flag = artitleService.addArtitle(artitle);
		if (flag) {
			return "addArtitle_success";
		} else {
			return "toAddArtitle";
		}
	}
	/*
	 * 删除文章
	 */
	@RequestMapping(value = "deleteArtitle")
	public String deleteArtitle(HttpServletRequest request) {
		String pid = request.getParameter("id");
		int id = Integer.parseInt(pid);
		boolean flag = artitleService.deleteArtitle(id);
		if (flag) {
			return "deleteArtitle_success";
		} else {
			return " ";
		}
	}
	/*
	 * 添加评论
	 */
	@RequestMapping(value = "comment")
	public String addComment(HttpServletRequest request) {
		String id = request.getParameter("Cid");
		int Cid = Integer.parseInt(id);
		String Cname = request.getParameter("Cname");
		String Ccontent = request.getParameter("Ccontent");
		Date date = new Date();
		TabArtitleCommend comment = new TabArtitleCommend();
		comment.setCid(Cid);
		comment.setCname(Cname);
		comment.setCcontent(Ccontent);
		comment.setCdate(date);
		int count = artitleService.addComment(comment);
		if (count>=1) {
			return "comment_success";
		} else {
			return "fail";
		}
	}
}
