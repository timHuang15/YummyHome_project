package yummyhome.dao.Impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import yummyhome.dao.OrderItemDao;
import yummyhome.dao.handler.OrderItemResultSetHandler;
import yummyhome.entity.OrderItem;
import yummyhome.util.JdbcUtils;

public class OrderItemDaoImpl implements OrderItemDao {

	/**
	 * 根据item_ID左外连接查出dishe信息
	 * */
	@Override
	public List<OrderItem> queryList(Integer id) {
		Connection conn = null;
		List<OrderItem> list = null;
		
		try {
			conn = JdbcUtils.getConnection();
			
			String sql = " SELECT d.dishe_name,d.dishe_category,d.dishe_price,"+
						" i.dishe_num ,i.item_id,i.dishe_id "+
						" FROM order_item i LEFT JOIN dishe d on i.dishe_id = d.dishe_id "+
						" where i.item_id = ? ";
			Object[] params = {id};
			list = JdbcUtils.executeQuery(conn, sql, params, new OrderItemResultSetHandler());
	
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
		return list;
	}

	/**
	 * 根据itemID删除订单信息
	 * */
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
					String sql = "delete from order_item ";
					sql +=" where ";
					for (int i=0;i<ids.length;i++) {
						if(i==0){
							sql += " item_id = ?";
						}else {
							sql += " or item_id = ?";
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
}
