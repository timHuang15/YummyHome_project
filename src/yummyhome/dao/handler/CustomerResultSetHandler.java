package yummyhome.dao.handler;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import yummyhome.dao.CustomerDao;
import yummyhome.dao.Impl.CustomerDaoImp;
import yummyhome.entity.Customer;
import yummyhome.util.ResultSetHandler;

public class CustomerResultSetHandler implements ResultSetHandler<Customer> {

	@Override
	public Customer getEntity(ResultSet rs) throws SQLException {
		Customer customer = new Customer();
		customer.setCustomer_id(rs.getInt("customer_id"));
		customer.setCustomer_name(rs.getString("customer_name"));
		customer.setCustomer_phone(rs.getString("customer_phone"));
		customer.setCustomer_user_name(rs.getString("customer_user_name"));
		customer.setCustomer_pwd(rs.getString("customer_pwd"));
		return customer;
	}

}
