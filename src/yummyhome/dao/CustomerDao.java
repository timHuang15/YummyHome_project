package yummyhome.dao;

import java.util.List;

import yummyhome.entity.Admin;
import yummyhome.entity.Customer;
import yummyhome.entity.Table;

public interface CustomerDao {
	
	/*<----------后台---------->*/
	/*添加顾客*/
	public void insert(Customer c);
	/*根据条件列出所有顾客*/
	public List<Customer> queryList(String whereSql,Object[] params);
	/*根据ID查处顾客*/
	public Customer queryById(Integer id);
	/*根据ID删除顾客*/
	public void delete(Integer id);
	/*根据ID删除多位顾客*/
	public void delete(Integer[] ids);
	/*修改顾客信息*/
	public void update(Customer c);
	
	/*<----------分页查询---------->*/
	/*根据条件分页列出所有顾客*/
	public List<Customer> pagequeryList(String whereSql,Object[] params,long page,long pageSize);
	/*根据条件总记录数查询*/
	public long queryCount(String whereSql,Object[] params);
	
	/*<----------前台---------->*/
	/*根据顾客用户名查找*/
	public Customer queryByUsername(String username);
}
