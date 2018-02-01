package yummyhome.dao.handler;

import java.sql.ResultSet;
import java.sql.SQLException;

import yummyhome.entity.Admin;
import yummyhome.util.ResultSetHandler;

public class AdminResultSetHandler implements ResultSetHandler<Admin> {

	@Override
	public Admin getEntity(ResultSet rs) throws SQLException {
		Admin admin = new Admin();
		admin.setAdmin_id(rs.getInt("admin_id"));
		admin.setAdmin_name(rs.getString("admin_name"));
		admin.setAdmin_pwd(rs.getString("admin_pwd"));
		return admin;
	}

}
