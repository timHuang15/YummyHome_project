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

	/**
	 * 查出所有桌子信息
	 * */
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
	/**
	 * 按ID单个删除
	 * */
	@Override
	public void delete(Integer id) {
		delete(new Integer[]{id});
		
	}
	/**
	 * 按ID多个删除
	 * */
	@Override
	public void delete(Integer[] ids) {
		if (null!=ids && ids.length>0) {
			Connection conn = null;
			try {
				conn = JdbcUtils.getConnection();
				String sql = "delete from yummytable ";
				sql +=" where ";
				for (int i=0;i<ids.length;i++) {
					if(i==0){
						sql += " table_id = ?";
					}else {
						sql += " or table_id = ?";
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
