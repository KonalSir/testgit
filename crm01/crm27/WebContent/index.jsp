<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/frameset.dtd">
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE>客户关系管理系统</TITLE> 
<META http-equiv=Content-Type content="text/html; charset=utf-8">
<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>

<!-- FRAMESET ： 用来划分区域的。 
	按行来划分区域， 第一部分，占据80行
	第二部分占据剩下的行。
-->
<FRAMESET frameSpacing=0 rows=80,* frameBorder=0>
	<FRAME name=top src="top.jsp" frameBorder=0 noResize scrolling=no>
	
	<!-- 第二部分又划分两个区域， 按列划分。 左边的列 220 ，剩下的区域占据所有的列，
	所有的单位都是 px -->
	<FRAMESET frameSpacing=0 frameBorder=0 cols=220,*>
		<FRAME name=menu src="${pageContext.request.contextPath}/menu.jsp" frameBorder=0 noResize>
		<FRAME name=main src="${pageContext.request.contextPath}/welcome.htm" frameBorder=0>
	</FRAMESET>
	<NOFRAMES>
		<p>This page requires frames, but your browser does not support them.</p>
	</NOFRAMES>
</FRAMESET>
</HTML>
