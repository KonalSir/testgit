package com.itheima.util;

import org.springframework.util.DigestUtils;

public class MD5Util {

	/**
	 * 加密密码
	 * @param password
	 * @return
	 */
	public static String encodePwd(String password){
		
		//123 -lkasjdlfkjalsjljsdlfjasld -ailweiurlkasjdflasjdf
		for (int i = 0; i < 10; i++) {
			password = DigestUtils.md5DigestAsHex(password.getBytes());
		}
		
		return password;
	}
}
