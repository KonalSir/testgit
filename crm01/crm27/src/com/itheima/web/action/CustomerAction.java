package com.itheima.web.action;

import com.itheima.bean.Customer;
import com.itheima.service.CustomerService;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class CustomerAction extends ActionSupport implements ModelDriven<Customer> {
	
	private Customer customer ;
	
	private CustomerService customerService;
	public void setCustomerService(CustomerService customerService) {
		this.customerService = customerService;
	}
	

	@Override
	public Customer getModel() {
		
		if(customer == null){
			customer = new Customer();
		}
		return customer;
	}

	public String save(){
		customerService.save(customer);
		return NONE;
	}
}
