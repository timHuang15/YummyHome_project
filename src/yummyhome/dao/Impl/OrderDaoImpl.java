package yummyhome.dao.Impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import yummyhome.dao.OrderDao;
import yummyhome.dao.handler.CustomerResultSetHandler;
import yummyhome.dao.handler.DisheResultSetHandler;
import yummyhome.dao.handler.OrderResultHandler;
import yummyhome.entity.Customer;
import yummyhome.entity.Dishe;
import yummyhome.entity.Order;
import yummyhome.util.JdbcUtils;

public class OrderDaoImpl implements OrderDao {

	/**
	 * 根据条件列出所有订单基本信息
	 * */
	@Override
	public List<Order> queryList(String whereSql, Object[] params) {
		Connection conn = null;
		List<Order> list = new ArrayList<Order>();
		
		try {
			conn = JdbcUtils.getConnection();
			
			String sql = "SELECT c.customer_id,c.customer_name,c.customer_user_name,c.customer_phone,"+
							"t.table_id,t.table_people,"+
							"o.order_id,o.book_time,o.order_time,o.order_state,o.amount_to "+
							"FROM yummyorder o "+
							"LEFT JOIN customer c on o.customer_id = c.customer_id "+
							"LEFT JOIN yummytable t on  o.table_id = t.table_id ";
			if(whereSql!=null && !whereSql.trim().isEmpty())
			{
				sql = sql+whereSql;
			}
			sql = sql +"order by order_id desc";
			list = JdbcUtils.executeQuery(conn, sql, params, new OrderResultHandler());
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
		return list;
	}

	/**
	 * 根据order_id查出单条订单信息
	 * */
	@Override
	public Order queryById(Integer id) {
		Connection conn = null;
		Order order = null;
		List<Order> list = null;
		
		try {
			conn = JdbcUtils.getConnection();
			String sql = "SELECT c.customer_id,c.customer_name,c.customer_user_name,c.customer_phone,"+
						"t.table_id,t.table_people,"+
						"o.order_id,o.book_time,o.order_time,o.order_state,o.amount_to "+
						"FROM yummyorder o "+
						"LEFT JOIN customer c on o.customer_id = c.customer_id "+
						"LEFT JOIN yummytable t on  o.table_id = t.table_id "+
						"WHERE o.order_id = ?";
			Object[] params = {id};
			list = JdbcUtils.executeQuery(conn, sql, params, new OrderResultHandler());
			if(list!=null && list.size()>0){
				order = list.get(0);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
		return order;
	}

	@Override
	public void delete(Integer id) {
		delete(new Integer[]{id});
		
	}

	/**
	 * 根据itemID删除多条订单信息
	 * */
	@Override
	public void delete(Integer[] ids) {
		if (null!=ids && ids.length>0) {
			Connection conn = null;
			try {
				conn = JdbcUtils.getConnection();
				String sql = "delete from yummyorder ";
				sql +=" where ";
				for (int i=0;i<ids.length;i++) {
					if(i==0){
						sql += " order_id = ?";
					}else {
						sql += " or order_id = ?";
					}
				}
				JdbcUtils.executeUpdate(conn, sql, ids);
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}finally {
				JdbcUtils.close(conn);
			}
		
	}
	}

	/**
	 * 标记订单已处理
	 * */
	@Override
	public void dealed(Order o) {
		Connection conn = null;
		try {
			conn = JdbcUtils.getConnection();
			String sql = "update yummyorder set order_state = ? where order_id = ?";
			Object[] params = {o.getOrder_state(),o.getOrder_id()};
			JdbcUtils.executeUpdate(conn, sql,params);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
	}

}
