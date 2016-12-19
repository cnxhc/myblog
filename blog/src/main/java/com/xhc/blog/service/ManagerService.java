package com.xhc.blog.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xhc.blog.dao.ManagerDao;
import com.xhc.blog.entity.Manager;

@Service
public class ManagerService {
	@Resource
	ManagerDao managerDao;
	public Manager checkLogin(String mname, String mpasswd) {
		// TODO Auto-generated method stub
		Manager manager=managerDao.checkLogin(mname,mpasswd);
		return manager;
	}
	public Manager managerUser(int id) {
		Manager manager=managerDao.selectOne(id);
		return manager;
	}
	public void updateUser(Manager manager) {
		 managerDao.updateUser(manager);
	}
	

}
