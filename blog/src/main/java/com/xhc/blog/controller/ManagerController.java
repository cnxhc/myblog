package com.xhc.blog.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xhc.blog.entity.Manager;
import com.xhc.blog.service.ManagerService;


@Controller
public class ManagerController{
	@Resource
	ManagerService managerService;
	/*
	 * 登录页
	 */
	@RequestMapping(value = "login")
	public String doLogin() {
		return "login";
	}
	/*
	 * 校验登录
	 */
	@RequestMapping(value = "checkLogin")
	public String checkLogin(HttpServletRequest request) {
		HttpSession session=request.getSession();
		String Mname = request.getParameter("username");
		String Mpasswd = request.getParameter("password");
		Manager manager = managerService.checkLogin(Mname, Mpasswd);
		session.setAttribute("manager", manager);
		if (manager!=null) {
			return "manager";
		}else{
			return "login";
		}
	}
	/*
	 * 安全退出
	 */
	@RequestMapping(value="logout")
	public String logout(HttpServletRequest request){
		request.getSession().removeAttribute("manager");
		request.getSession().invalidate();
		return "login";
	}
	/*
	 * 查询一个用户
	 */
	@RequestMapping(value="managerUser")
	public String managerUser(HttpServletRequest request){
		HttpSession session=request.getSession();
		Manager managerSession=(Manager) session.getAttribute("manager");
		int id=managerSession.getId();
		Manager manager1=managerService.managerUser(id);
		request.setAttribute("manager1", manager1);
		return "managerUser";
	}
	/*
	 *修改用户
	 */
	@RequestMapping(value="updateUser")
	public String updateUser(HttpServletRequest request){
		String Mname=request.getParameter("Mname");
		String Mpasswd=request.getParameter("Mpasswd");
		Manager manager=new Manager();	
		manager.setMname(Mname);
		manager.setMpasswd(Mpasswd);
		managerService.updateUser(manager);
		request.getSession().removeAttribute("manager");
		request.getSession().invalidate();
		return "login";
	}
	
	/*
	 * 管理页
	 */
	@RequestMapping(value="manager")
	public String managerPage(HttpServletRequest request){
		return "manager";
	}
	}
