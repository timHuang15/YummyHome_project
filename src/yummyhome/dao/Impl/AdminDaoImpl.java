package yummyhome.dao.Impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import yummyhome.dao.AdminDao;
import yummyhome.dao.handler.AdminResultSetHandler;
import yummyhome.dao.handler.CustomerResultSetHandler;
import yummyhome.entity.Admin;
import yummyhome.entity.Customer;
import yummyhome.util.JdbcUtils;

public class AdminDaoImpl implements AdminDao {

	/**
	 * 根据管理员用户名查找
	 * */
	@Override
	public Admin queryByUsername(String username) {
		Connection conn = null;
		Admin admin = null;
		List<Admin> list = null;
		
		try {
			conn = JdbcUtils.getConnection();
			String sql = "select * from admin where admin_name = ?";
			Object[] params = {username};
			list = JdbcUtils.executeQuery(conn, sql, params, new AdminResultSetHandler());
			if(list!=null && list.size()>0){
				admin = list.get(0);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
		return admin;
	}

}
