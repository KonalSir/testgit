<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>添加客户</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.2900.3492" name=GENERATOR>

<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">

	/* 页面加载完毕，就马上去请求字典数据 ， 举个栗子： 客户级别 */
	
	function loadDict(type_code , tagId){
		var url = "${pageContext.request.contextPath }/baseDict_findByType";
		$.post(url , {"dict_type_code" : type_code} , function(result){
			
			//result : 现在就是一个字典集合数据，我们要遍历。  [] 
			//遍历一次，执行一次function , i :遍历的下标， n :遍历出来的元素，其实就是字典对象。
			$(result).each(function(i , n){
				$(tagId).append("<option value='"+n.dict_id+"'>"+n.dict_item_name+"</option>")
			})	
		} , "json");
	}
	
	
	$(function(){
		loadDict("001" , "#cust_industry"); //客户行业 -- 001
		loadDict("002" , "#cust_source"); //客户来源 --002
		loadDict("006" , "#cust_level"); //客户级别  --006
	})
	
	/* $(function(){
		var url = "${pageContext.request.contextPath }/baseDict_findByType";
		$.post(url , {"dict_type_code" : "006"} , function(result){
			
			//result : 现在就是一个字典集合数据，我们要遍历。  [] 
			//遍历一次，执行一次function , i :遍历的下标， n :遍历出来的元素，其实就是字典对象。
			$(result).each(function(i , n){
				$("#cust_level").append("<option value='"+n.dict_id+"'>"+n.dict_item_name+"</option>")
			})	
		} , "json");
	})
	
	//客户来源
	$(function(){
		var url = "${pageContext.request.contextPath }/baseDict_findByType";
		$.post(url , {"dict_type_code" : "002"} , function(result){
			
			//result : 现在就是一个字典集合数据，我们要遍历。  [] 
			//遍历一次，执行一次function , i :遍历的下标， n :遍历出来的元素，其实就是字典对象。
			$(result).each(function(i , n){
				$("#cust_source").append("<option value='"+n.dict_id+"'>"+n.dict_item_name+"</option>")
			})	
		} , "json");
	})
	
	//客户行业
	$(function(){
		var url = "${pageContext.request.contextPath }/baseDict_findByType";
		$.post(url , {"dict_type_code" : "001"} , function(result){
			
			//result : 现在就是一个字典集合数据，我们要遍历。  [] 
			//遍历一次，执行一次function , i :遍历的下标， n :遍历出来的元素，其实就是字典对象。
			$(result).each(function(i , n){
				$("#cust_industry").append("<option value='"+n.dict_id+"'>"+n.dict_item_name+"</option>")
			})	
		} , "json");
	}) */

</script>

</HEAD>
<BODY>
	<FORM id=form1 name=form1 action="${pageContext.request.contextPath }/customer_save" method=post>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_019.jpg" border=0></TD>
					<TD width="100%" background="${pageContext.request.contextPath }/images/new_020.jpg" height=20></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_021.jpg" border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15 background="${pageContext.request.contextPath }/images/new_022.jpg">
						<IMG src="${pageContext.request.contextPath }/images/new_022.jpg" border=0>
					</TD>
					<TD vAlign=top width="100%" bgColor=#ffffff>
						<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
							<TR>
								<TD class=manageHead>当前位置：客户管理 &gt; 添加客户</TD>
							</TR>
							<TR>
								<TD height=2></TD>
							</TR>
						</TABLE>						
						<TABLE cellSpacing=0 cellPadding=5  border=0>
							<TR>
								<td>客户名称：</td>
								<td>
									<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_name">
								</td>
								<td>所属行业 ：</td>
								<td>
									<select name="cust_industry" class=textbox id="cust_industry" style="WIDTH: 180px ;height:21px">
										<option value="">---请选择---</option>
									</select>
								</td>
							</TR>							
							<TR>	
								<td>信息来源 ：</td>
								<td>
									<select name="cust_source" class=textbox id="cust_source" style="WIDTH: 180px ;height:21px">
										<option value="">---请选择---</option>
									</select>
								</td>
								<td>客户级别：</td>
								<td>
									<select name="cust_level" class=textbox id="cust_level" style="WIDTH: 180px;height:21px">
										<option value="">---请选择---</option>
									</select>								
								</td>
							</TR>
							<TR>
								<td>联系地址 ：</td>
								<td>
									<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_address">
								</td>
								<td>联系电话 ：</td>
								<td>
									<INPUT class=textbox id=sChannel2 style="WIDTH: 180px" maxLength=50 name="cust_phone">
								</td>
							</TR>
							<tr>
								<td rowspan=2>
									<INPUT class=button id=sButton2 type=submit value=" 保存 " name=sButton2>
								</td>
							</tr>
						</TABLE>
					</TD>
					<TD width=15 background="${pageContext.request.contextPath }/images/new_023.jpg">
						<IMG src="${pageContext.request.contextPath }/images/new_023.jpg" border=0>
					</TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_024.jpg" border=0></TD>
					<TD align="center" width="100%" background="${pageContext.request.contextPath }/images/new_025.jpg" height=15></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_026.jpg"	border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
	</FORM>
</BODY>
</HTML>
