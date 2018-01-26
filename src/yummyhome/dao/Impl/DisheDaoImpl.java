package yummyhome.dao.Impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import yummyhome.dao.DisheDao;
import yummyhome.dao.handler.CustomerResultSetHandler;
import yummyhome.dao.handler.DisheResultSetHandler;
import yummyhome.entity.Customer;
import yummyhome.entity.Dishe;
import yummyhome.util.JdbcUtils;

public class DisheDaoImpl implements DisheDao {

	@Override
	public List<Dishe> queryList(String whereSql, Object[] params) {
		Connection conn = null;
		List<Dishe> list = new ArrayList<Dishe>();
		
		try {
			conn = JdbcUtils.getConnection();
			
			String sql = "select * from dishe ";
			if(whereSql!=null && !whereSql.trim().isEmpty())
			{
				sql = sql+whereSql;
			}
			sql = sql +"order by dishe_id desc";
			list = JdbcUtils.executeQuery(conn, sql, params, new DisheResultSetHandler());
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
		return list;
	}

}
