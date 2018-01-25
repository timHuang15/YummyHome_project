package yummyhome.dao.handler;

import java.sql.ResultSet;
import java.sql.SQLException;

import yummyhome.entity.Table;
import yummyhome.util.ResultSetHandler;

public class TableResultSetHandler implements ResultSetHandler<Table> {

	@Override
	public Table getEntity(ResultSet rs) throws SQLException {
		Table table = new Table();
		table.setTable_id(rs.getInt("table_id"));
		table.setTable_people(rs.getInt("table_people"));
		table.setTable_total(rs.getInt("table_total"));
		table.setTable_surplus(rs.getInt("table_surplus"));
		table.setTable_price(rs.getDouble("table_price"));
		return table;
	}

}
