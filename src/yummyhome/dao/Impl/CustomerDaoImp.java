package yummyhome.dao.Impl;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import yummyhome.dao.CustomerDao;
import yummyhome.dao.handler.CustomerResultSetHandler;
import yummyhome.dao.handler.TableResultSetHandler;
import yummyhome.entity.Customer;
import yummyhome.entity.Table;
import yummyhome.util.JdbcUtils;

public class CustomerDaoImp implements CustomerDao {
	/**
	 * 添加顾客
	 * */
	@Override
	public void insert(Customer c) {
		Connection conn = null;
		try {
			conn = JdbcUtils.getConnection();
			String sql = "insert into customer (customer_name,customer_phone,customer_user_name,customer_pwd) values (?,?,?,?)";
			Object[] params = {c.getCustomer_name(),c.getCustomer_phone(),c.getCustomer_user_name(),c.getCustomer_pwd()};
			JdbcUtils.executeUpdate(conn, sql,params);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
	}
	
	/**
	 * 列出所有顾客
	 * */
	@Override
	public List<Customer> queryList() {
		Connection conn = null;
		List<Customer> list = new ArrayList<Customer>();
		
		try {
			conn = JdbcUtils.getConnection();
			String sql = "select * from customer order by customer_id desc";
			Object[] params = {};
			list = JdbcUtils.executeQuery(conn, sql, params, new CustomerResultSetHandler());
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
		return list;
	}
	
	/**
	 * 根据ID查处顾客
	 * */
	@Override
	public Customer queryById(Integer id) {
		Connection conn = null;
		Customer customer = null;
		List<Customer> list = null;
		
		try {
			conn = JdbcUtils.getConnection();
			String sql = "select * from customer where customer_id=?";
			Object[] params = {id};
			list = JdbcUtils.executeQuery(conn, sql, params, new CustomerResultSetHandler());
			if(list!=null && list.size()>0){
				customer = list.get(0);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
		return customer;
	}
	
	/**
	 * 根据ID删除顾客
	 * */
	@Override
	public void delete(Integer id) {
		delete(new Integer[]{id});
		
	}

	/**
	 * 根据ID删除多位顾客
	 * */
	@Override
	public void delete(Integer[] ids) {
		if (null!=ids && ids.length>0) {
			Connection conn = null;
			try {
				conn = JdbcUtils.getConnection();
				String sql = "delete from customer ";
				sql +=" where ";
				for (int i=0;i<ids.length;i++) {
					if(i==0){
						sql += " customer_id = ?";
					}else {
						sql += " or customer_id = ?";
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
	 * 修改顾客信息
	 * */
	@Override
	public void update(Customer c) {
		Connection conn = null;
		try {
			conn = JdbcUtils.getConnection();
			String sql = "update customer set customer_name=?,customer_phone=?,customer_user_name=?,customer_pwd=? where customer_id=?";
			Object[] params = {c.getCustomer_name(),c.getCustomer_phone(),c.getCustomer_user_name(),c.getCustomer_pwd(),c.getCustomer_id()};
			JdbcUtils.executeUpdate(conn, sql,params);
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JdbcUtils.close(conn);
		}
		
	}

	

}
