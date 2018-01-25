package yummyhome.dao.Impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import yummyhome.dao.CustomerDao;
import yummyhome.dao.handler.CustomerResultSetHandler;
import yummyhome.entity.Customer;
import yummyhome.util.JdbcUtils;

public class CustomerDaoImp implements CustomerDao {
	/**
	 * 查出所有顾客信息
	 * */
	@Override
	public List<Customer> queryList() {
		Connection conn = null;
		List<Customer> list = new ArrayList<Customer>();
		
		try {
			conn = JdbcUtils.getConnection();
			String sql = "select * from customer order by customer_id desc";
			Object[] params = {};
			list = JdbcUtils.executeQuery(conn, sql, params, new CustomerResultSetHandler());
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
		return list;
	}

}
