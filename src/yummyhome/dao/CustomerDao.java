package yummyhome.dao;

import java.util.List;

import yummyhome.entity.Customer;

public interface CustomerDao {
	/*查出所有顾客信息*/
	public List<Customer> queryList();
}
