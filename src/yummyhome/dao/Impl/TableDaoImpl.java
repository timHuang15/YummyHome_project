package yummyhome.dao.Impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import yummyhome.dao.TableDao;
import yummyhome.dao.handler.TableResultSetHandler;
import yummyhome.entity.Table;
import yummyhome.util.JdbcUtils;

public class TableDaoImpl implements TableDao{

	/*查出所有桌子信息*/
	@Override
	public List<Table> queryList() {
		Connection conn = null;
		List<Table> list = new ArrayList<Table>();
		
		try {
			conn = JdbcUtils.getConnection();
			String sql = "select * from yummytable order by table_id desc";
			Object[] params = {};
			list = JdbcUtils.executeQuery(conn, sql, params, new TableResultSetHandler());
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
		return list;
	}

}
