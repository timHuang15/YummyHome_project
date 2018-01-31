package yummyhome.dao.handler;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import yummyhome.dao.OrderDao;
import yummyhome.dao.OrderItemDao;
import yummyhome.dao.Impl.OrderDaoImpl;
import yummyhome.dao.Impl.OrderItemDaoImpl;
import yummyhome.entity.Customer;
import yummyhome.entity.Order;
import yummyhome.entity.OrderItem;
import yummyhome.entity.Table;
import yummyhome.util.ResultSetHandler;

public class OrderResultHandler implements ResultSetHandler<Order> {

	@Override
	public Order getEntity(ResultSet rs) throws SQLException {
		Order order = new Order();
		
		order.setOrder_id(rs.getInt("order_id"));
		
		Integer customerId = rs.getInt("customer_id");
		String customerName = rs.getString("customer_name");
		String customerUsername = rs.getString("customer_user_name");
		String customerPhone = rs.getString("customer_phone");
		
		Customer customer = new Customer();
		customer.setCustomer_id(customerId);
		customer.setCustomer_name(customerName);
		customer.setCustomer_user_name(customerUsername);
		customer.setCustomer_phone(customerPhone);
		order.setCustomer(customer);
		
		Integer tableId = rs.getInt("table_id");
		Integer tablePeople = rs.getInt("table_people");
		Table table = new Table();
		table.setTable_id(tableId);
		table.setTable_people(tablePeople);
		order.setTable(table);
		
		order.setBook_time(rs.getDate("book_time"));
		order.setOrder_time(rs.getDate("order_time"));
		order.setOrder_state(rs.getString("order_state"));
		order.setAmount_to(rs.getDouble("amount_to"));
		return order;
	}

	public static void main(String[] args) {
		OrderDao oDao = new OrderDaoImpl();
		List<Order> list = oDao.queryList(null, null);
		System.out.println(list);
	}
}
