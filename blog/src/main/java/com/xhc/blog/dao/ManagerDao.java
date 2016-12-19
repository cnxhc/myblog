package com.xhc.blog.dao;

import com.xhc.blog.entity.Manager;

public interface ManagerDao {

	public Manager checkLogin(String Mname, String Mpasswd);

	public Manager selectOne(int id);

	public void updateUser(Manager manager);

}
