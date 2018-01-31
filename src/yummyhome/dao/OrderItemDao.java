package yummyhome.dao;

import yummyhome.entity.*;
import java.util.List;

public interface OrderItemDao {
	/*根据item_ID左外连接查出dishe信息*/
	public List<OrderItem> queryList(Integer id);
	/*根据itemID删除订单信息*/
	public void delete(Integer id);
	/*根据itemID删除多条订单信息*/
	public void delete(Integer[] ids);
}
