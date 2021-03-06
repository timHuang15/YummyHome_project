package yummyhome.dao;

import java.util.List;

import yummyhome.entity.Order;

public interface OrderDao {

	/*根据条件列出所有订单基本信息*/
	public List<Order> queryList(String whereSql,Object[] params);
	/*根据order_id查出单条订单信息*/
	public Order queryById(Integer id);
	/*根据itemID删除订单信息*/
	public void delete(Integer id);
	/*根据itemID删除多条订单信息*/
	public void delete(Integer[] ids);
	/*标记订单已处理*/
	public void dealed(Order o);
	
	/*<----------分页查询---------->*/
	/*根据条件分页列出所有订单*/
	public List<Order> pagequeryList(String whereSql,Object[] params,long page,long pageSize);
	/*根据条件总记录数查询*/
	public long queryCount(String whereSql,Object[] params);
}
