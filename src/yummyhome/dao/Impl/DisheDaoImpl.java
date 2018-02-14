package yummyhome.dao.Impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import yummyhome.dao.DisheDao;
import yummyhome.dao.handler.CountResultSetHandler;
import yummyhome.dao.handler.CustomerResultSetHandler;
import yummyhome.dao.handler.DisheResultSetHandler;
import yummyhome.entity.Customer;
import yummyhome.entity.Dishe;
import yummyhome.util.JdbcUtils;

public class DisheDaoImpl implements DisheDao {
	/**
	 * 根据条件列出所有菜品
	 * */
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
	/**
	 * 根据ID查处菜品
	 * */
	@Override
	public Dishe queryById(Integer id) {
		Connection conn = null;
		Dishe dishe = null;
		List<Dishe> list = null;
		
		try {
			conn = JdbcUtils.getConnection();
			String sql = "select * from dishe where dishe_id=?";
			Object[] params = {id};
			list = JdbcUtils.executeQuery(conn, sql, params, new DisheResultSetHandler());
			if(list!=null && list.size()>0){
				dishe = list.get(0);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
		return dishe;
	}
	
	/**
	 * 根据ID删除菜品
	 * */
	@Override
	public void delete(Integer id) {
		delete(new Integer[]{id});
		
	}
	/**
	 * 根据ID删除多份菜品
	 * */
	@Override
	public void delete(Integer[] ids) {
		if (null!=ids && ids.length>0) {
			Connection conn = null;
			try {
				conn = JdbcUtils.getConnection();
				String sql = "delete from dishe ";
				sql +=" where ";
				for (int i=0;i<ids.length;i++) {
					if(i==0){
						sql += " dishe_id = ?";
					}else {
						sql += " or dishe_id = ?";
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
	 * 修改菜品信息
	 * */
	@Override
	public void update(Dishe d) {
		Connection conn = null;
		try {
			conn = JdbcUtils.getConnection();
			String sql = "update dishe set dishe_name=?,dishe_info=?,dishe_images=?,"+
						 "dishe_price=?,dishe_total=?,dishe_surplus=?";
				   sql = sql+" where dishe_id=?";
			Object[] params = {d.getDishe_name(),d.getDishe_info(),d.getDishe_images(),d.getDishe_price(),d.getDishe_total(),d.getDishe_surplus(),d.getDishe_id()};
			JdbcUtils.executeUpdate(conn, sql,params);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
	}
	
	/**
	 * 插入新菜品
	 * */
	@Override
	public void insert(Dishe d) {
		Connection conn = null;
		try 
		{
			conn = JdbcUtils.getConnection();
			String sql = "insert into dishe (dishe_name,dishe_category,dishe_info,"+
						 "dishe_images,dishe_price,dishe_total,dishe_surplus)";
				   sql = sql +" values (?,?,?,?,?,?,?)";
			Object[] params = {d.getDishe_name(),d.getDishe_category(),d.getDishe_info(),d.getDishe_images(),d.getDishe_price(),d.getDishe_total(),d.getDishe_surplus()};
			JdbcUtils.executeUpdate(conn, sql,params);
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
			throw new RuntimeException(e);
		}
		finally 
		{
			JdbcUtils.close(conn);
		
		}

	}
	
	/*<----------分页查询---------->*/
	/**
	 * 根据条件分页列出所有菜品
	 * */
	@Override
	public List<Dishe> pagequeryList(String whereSql, Object[] params, long page, long pageSize) {
		Connection conn = null;
		List<Dishe> list = new ArrayList<Dishe>();
		List paramList = new ArrayList();//查询条件参数集合
		try {
			conn = JdbcUtils.getConnection();
			
			String sql = "select * from dishe ";
			if(whereSql!=null && !whereSql.trim().isEmpty())
			{
				sql = sql+whereSql;
				if(params!=null)//添加where子句对应得参数
				{
					paramList.addAll(Arrays.asList(params));
				}
			}
			sql = sql +"order by dishe_id desc ";
			if(page>0 && pageSize>0)//传人的分页参数必须大于0
			{
				sql = sql + "limit ?,?";
				long start = (page-1)*pageSize;//计算起始行
				paramList.add(start);
				paramList.add(pageSize);
			}
			list = JdbcUtils.executeQuery(conn, sql, paramList.toArray(), new DisheResultSetHandler());
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
		return list;
	}
	
	/**
	 * 根据条件总记录数查询
	 * */
	@Override
	public long queryCount(String whereSql, Object[] params) {
		Connection conn = null;
		long count = 0;
		List paramList = new ArrayList();//查询条件参数集合
		try {
			conn = JdbcUtils.getConnection();
			
			String sql = "select count(*) from dishe ";
			if(whereSql!=null && !whereSql.trim().isEmpty())
			{
				sql = sql+whereSql;
				if(params!=null)//添加where子句对应得参数
				{
					paramList.addAll(Arrays.asList(params));
				}
			}
			List<Long> list = JdbcUtils.executeQuery(conn, sql, paramList.toArray(), new CountResultSetHandler());
			count = list.get(0);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
		return count;
	}
}
