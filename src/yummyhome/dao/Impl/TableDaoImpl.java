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
	 * 添加桌子记录
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
	 * 列出所有桌子
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
	 * 根据ID删除桌子
	 * */
	@Override
	public void delete(Integer id) {
		delete(new Integer[]{id});
		
	}
	
	/**
	 * 根据ID删除多张桌子
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

	/**
	 * 根据ID查找桌子
	 * */
	@Override
	public Table queryById(Integer id) {
		Connection conn = null;
		Table table = null;
		List<Table> list = null;
		
		try {
			conn = JdbcUtils.getConnection();
			String sql = "select * from yummytable where table_id=?";
			Object[] params = {id};
			list = JdbcUtils.executeQuery(conn, sql, params, new TableResultSetHandler());
			if(list!=null && list.size()>0){
				table = list.get(0);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
		return table;
	}
	
	/**
	 * 修改桌子信息
	 * */
	@Override
	public void update(Table t) {
		Connection conn = null;
		try {
			conn = JdbcUtils.getConnection();
			String sql = "update yummytable set table_people=?,table_total=?,table_surplus=?,table_price=? where table_id=?";
			Object[] params = {t.getTable_people(),t.getTable_total(),t.getTable_surplus(),t.getTable_price(),t.getTable_id()};
			JdbcUtils.executeUpdate(conn, sql,params);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
		
	}
	

}
