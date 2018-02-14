package yummyhome.dao.handler;

import java.sql.ResultSet;
import java.sql.SQLException;

import yummyhome.util.ResultSetHandler;

/**
 * 总记录数结果集返回
 * */
public class CountResultSetHandler implements ResultSetHandler<Long>{

	@Override
	public Long getEntity(ResultSet rs) throws SQLException {
		// TODO Auto-generated method stub
		return rs.getLong(1);
	}

}
