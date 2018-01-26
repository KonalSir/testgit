package com.itheima.service.impl;

import org.springframework.transaction.annotation.Transactional;

import com.itheima.bean.User;
import com.itheima.dao.UserDao;
import com.itheima.service.UserService;
import com.itheima.util.MD5Util;

@Transactional
public class UserServiceImpl implements UserService {
	
	private UserDao userDao;
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	public void register(User user) {
		
		String password = MD5Util.encodePwd(user.getUser_password());
		user.setUser_password(password);
		
		userDao.save(user);
	}

	@Override
	public User login(User user) {
		String password = MD5Util.encodePwd(user.getUser_password());
		user.setUser_password(password);
		return userDao.findUser(user);
	}

}
