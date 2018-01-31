package yummyhome.dao.handler;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import yummyhome.dao.OrderItemDao;
import yummyhome.dao.Impl.OrderItemDaoImpl;
import yummyhome.entity.Dishe;
import yummyhome.entity.OrderItem;
import yummyhome.util.ResultSetHandler;

public class OrderItemResultSetHandler implements ResultSetHandler<OrderItem> {

	@Override
	public OrderItem getEntity(ResultSet rs) throws SQLException {
		OrderItem item = new OrderItem();
		item.setItem_id(rs.getInt("item_id"));
		
		Integer disheID = rs.getInt("dishe_id");
		String disheName = rs.getString("dishe_name");
		String disheCategory = rs.getString("dishe_category");
		Double dishePrice = rs.getDouble("dishe_price");
		
		Dishe dishe = new Dishe();
		dishe.setDishe_id(disheID);
		dishe.setDishe_name(disheName);
		dishe.setDishe_category(disheCategory);
		dishe.setDishe_price(dishePrice);
		
		item.setDishe(dishe);
		
		item.setDishe_num(rs.getInt("dishe_num"));
		
		return item;
	}
	
	public static void main(String[] args) {
		OrderItemDao oDao = new OrderItemDaoImpl();
		List<OrderItem> list = oDao.queryList(2);
		System.out.println(list);
	}

}
