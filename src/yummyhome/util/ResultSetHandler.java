package yummyhome.util;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * ���������ӿ�
 * @param <T>
 */
public interface ResultSetHandler<T> {
	public T getEntity(ResultSet rs) throws SQLException;
}
