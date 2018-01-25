package yummyhome.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


/**
 * ������
 * 
 * @author Administrator
 *
 */


public class JdbcUtils {
	private static String driverClass = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://127.0.0.1:3306/yummy?useUnicode=true&characterEncoding=utf-8";
	private static String user = "root";
	private static String password = "";

	static {
		try {
			Class.forName(driverClass);// ����������
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	/**
	 * �������
	 * 
	 * @return
	 * @throws SQLException
	 */
	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(url, user, password);
	}

	/**
	 * �ر�ResultSet
	 * 
	 * @param rs
	 */
	public static void close(ResultSet rs) {
		if (null != rs) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * �ر�Statement
	 * 
	 * @param rs
	 */
	public static void close(Statement stmt) {
		if (null != stmt) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * �ر�Connection
	 * 
	 * @param rs
	 */
	public static void close(Connection conn) {
		if (null != conn) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * �ر���Դ
	 * 
	 * @param rs
	 * @param stmt
	 * @param conn
	 */
	public static void close(ResultSet rs, Statement stmt, Connection conn) {
		close(rs);
		close(stmt);
		close(conn);
	}

	/**
	 * ִ��insert,update,delete�Ȳ���
	 * 
	 * @param conn
	 * @param sql
	 * @param params
	 * @return
	 * @throws SQLException
	 */
	public static int executeUpdate( Connection conn ,
			String sql, Object[] params)
			throws SQLException {
		
		PreparedStatement stmt = null;
		try {
			stmt = conn.prepareStatement(sql);
			if (null != params && params.length > 0) {
				for (int i = 0; i < params.length; i++) {
					stmt.setObject(i + 1, params[i]);
				}
			}
			int count = stmt.executeUpdate();
			return count;
		} finally {
			close(stmt);
		}
	}
	
	/**
	 * ��ѯ��ִ��select���
	 * @param conn
	 * @param sql
	 * @param params
	 * @param handler
	 * @return
	 * @throws SQLException
	 */
	public  static <T> List<T> executeQuery(Connection conn, 
			String sql,Object[] params,
			ResultSetHandler<T> handler ) 
			throws SQLException{
		PreparedStatement stmt = null;
		ResultSet rs = null;
		List<T> list = new ArrayList<T>();
		try {
			stmt = conn.prepareStatement(sql);
			if (null != params && params.length > 0) {
				for (int i = 0; i < params.length; i++) {
					stmt.setObject(i + 1, params[i]);
				}
			}
			rs = stmt.executeQuery();
			while(rs.next()){
				T o = handler.getEntity(rs);
				list.add(o);
			}
			return list;
		} finally {
			close(rs,stmt,null);
		}
	}
}
