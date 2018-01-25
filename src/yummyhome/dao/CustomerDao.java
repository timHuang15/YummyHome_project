package yummyhome.dao;

import java.util.List;

import yummyhome.entity.Customer;
import yummyhome.entity.Table;

public interface CustomerDao {
	/*添加顾客*/
	public void insert(Customer c);
	/*列出所有顾客*/
	public List<Customer> queryList();
	/*根据ID查处顾客*/
	public Customer queryById(Integer id);
	/*根据ID删除顾客*/
	public void delete(Integer id);
	/*根据ID删除多位顾客*/
	public void delete(Integer[] ids);
	/*修改顾客信息*/
	public void update(Customer c);
}
