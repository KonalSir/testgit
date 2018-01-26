package com.itheima.bean;

/**
 * @author xiaomi
 *
 */
public class Customer {

	
	private Long cust_id;
	private String cust_name; //客户名称
/*	private String cust_source; //客户来源
	private String cust_industry; //客户行业
	private String cust_level; //客户级别
*/	private String cust_address; //客户地址
	private String cust_phone;//客户电话
	
	//客户和字典表的关系是： 多对对一 。  表示我这个客户属于哪一种级别， 属于哪一种行业，属于哪一种来源
	private BaseDict cust_source; //客户来源
	private BaseDict cust_industry; //客户行业
	private BaseDict cust_level; //客户级别
	
	private Long cust_user_id; //负责人
	private Long cust_create_id; //创建人
	public Long getCust_id() {
		return cust_id;
	}
	public void setCust_id(Long cust_id) {
		this.cust_id = cust_id;
	}
	public String getCust_name() {
		return cust_name;
	}
	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}
	
	public BaseDict getCust_source() {
		return cust_source;
	}
	public void setCust_source(BaseDict cust_source) {
		this.cust_source = cust_source;
	}
	public BaseDict getCust_industry() {
		return cust_industry;
	}
	public void setCust_industry(BaseDict cust_industry) {
		this.cust_industry = cust_industry;
	}
	public BaseDict getCust_level() {
		return cust_level;
	}
	public void setCust_level(BaseDict cust_level) {
		this.cust_level = cust_level;
	}
	public String getCust_address() {
		return cust_address;
	}
	public void setCust_address(String cust_address) {
		this.cust_address = cust_address;
	}
	public String getCust_phone() {
		return cust_phone;
	}
	public void setCust_phone(String cust_phone) {
		this.cust_phone = cust_phone;
	}
	public Long getCust_user_id() {
		return cust_user_id;
	}
	public void setCust_user_id(Long cust_user_id) {
		this.cust_user_id = cust_user_id;
	}
	public Long getCust_create_id() {
		return cust_create_id;
	}
	public void setCust_create_id(Long cust_create_id) {
		this.cust_create_id = cust_create_id;
	}
	@Override
	public String toString() {
		return "Customer [cust_id=" + cust_id + ", cust_name=" + cust_name + ", cust_source=" + cust_source
				+ ", cust_industry=" + cust_industry + ", cust_level=" + cust_level + ", cust_address=" + cust_address
				+ ", cust_phone=" + cust_phone + ", cust_user_id=" + cust_user_id + ", cust_create_id=" + cust_create_id
				+ "]";
	}
	
	
	
}
