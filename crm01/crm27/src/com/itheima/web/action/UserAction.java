package com.itheima.web.action;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.itheima.bean.User;
import com.itheima.service.UserService;
import com.itheima.util.Constant;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import cn.dsna.util.images.ValidateCode;

public class UserAction extends ActionSupport implements ModelDriven<User> {
	private User user ;
	private UserService userService;
	private String valCode;
	
	public void setValCode(String valCode) {
		this.valCode = valCode;
	}
	
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	@Override
	public User getModel() {
		if(user == null){
			user = new User();
		}
		return user;
	}
	
	//注册用户
	public String register(){
		 System.out.println("`12`12");
		//手动设置这个状态是可用的。 1
		user.setUser_state('1');
		
		userService.register(user);
		
		return NONE;
	}
	
	//用户登录
	public String login(){
		
		//登录之前，先比对验证码
		HttpSession session = ServletActionContext.getRequest().getSession();
		String code = (String) session.getAttribute("code");
		
		//清除掉session里面的那个验证码
		session.removeAttribute("code");
		
		if(!code.equalsIgnoreCase(valCode)){
			addFieldError("msg",  "验证码错误");
			return  Constant.LOGIN_ERROR;
		}
		
		User loginUser = userService.login(user);
		
		if(loginUser !=null){
			//登录成功： 1. 保存数据到session， 能存到值栈么???(不能)  2. 跳转页面
			
			session.setAttribute("user", loginUser);
			
			return Constant.LOGIN_SUCCESS;
		}
		
		//登录失败： 1. 保存失败信息到作用域request ， 2. 跳转页面 login
		//ServletActionContext.getRequest().setAttribute("msg", "用户名或者密码错误!");
		
		addFieldError("msg",  "用户名或者密码错误2!");
		
		return  Constant.LOGIN_ERROR;
	}
	
	//生成验证码
	public String createCode() throws IOException{
		
		ValidateCode validateCode = new ValidateCode(130, 50, 4, 8);
		
		//拿到了验证码  -- 4个文字
		String code = validateCode.getCode();
		
		//存到session里面去。
		ServletActionContext.getRequest().getSession().setAttribute("code", code);
		
		//把图片给页面 写给响应，
		validateCode.write(ServletActionContext.getResponse().getOutputStream());
		
		return NONE;
	}

}
