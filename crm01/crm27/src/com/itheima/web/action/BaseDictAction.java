package com.itheima.web.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.google.gson.Gson;
import com.itheima.bean.BaseDict;
import com.itheima.service.BaseDictService;
import com.opensymphony.xwork2.ActionSupport;

public class BaseDictAction extends ActionSupport {
	
	private String dict_type_code;
	
	private BaseDictService baseDictService;
	public void setBaseDictService(BaseDictService baseDictService) {
		this.baseDictService = baseDictService;
	}
	
	public void setDict_type_code(String dict_type_code) {
		this.dict_type_code = dict_type_code;
	}
	
	public String findByType() throws IOException{
		//1. 根据类型，获取到了字典的集合数据
		List<BaseDict> list = baseDictService.findByType(dict_type_code);
		
		//2. 把这个list集合变成json数据 
		String json = new Gson().toJson(list);
		
		//3. 把json写出去
		HttpServletResponse response = ServletActionContext.getResponse();
		
		//设置中文显示
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().write(json);
		
		return NONE;
	}

}
