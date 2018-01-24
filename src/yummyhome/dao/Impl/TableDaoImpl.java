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
	 * �������
	 * */
	@Override
	public void save(Table t) {
		Connection conn = null;
		try {
			conn = JdbcUtils.getConnection();
			String sql = "insert into yummytable (table_people,table_total,table_surplus,table_price) values (?,?,?,?)";
			Object[] params = {t.getTable_people(),t.getTable_total(),t.getTable_surplus(),t.getTable_price()};
			JdbcUtils.executeUpdate(conn, sql,params);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
		
	}
	
	/**
	 * �������������Ϣ
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
	 * ��ID����ɾ��
	 * */
	@Override
	public void delete(Integer id) {
		delete(new Integer[]{id});
		
	}
	
	/**
	 * ��ID���ɾ��
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
