package com.glannath.springapp.dao;

import java.util.List;

import com.glannath.springapp.entity.Customer;

public interface CustomerDAO {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);
}
