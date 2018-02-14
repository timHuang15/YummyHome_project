package yummyhome.dao.handler;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import yummyhome.dao.DisheDao;
import yummyhome.dao.Impl.DisheDaoImpl;
import yummyhome.entity.Dishe;
import yummyhome.util.ResultSetHandler;

public class DisheResultSetHandler implements ResultSetHandler<Dishe> {

	@Override
	public Dishe getEntity(ResultSet rs) throws SQLException {
		Dishe dishe = new Dishe();
		dishe.setDishe_id(rs.getInt("dishe_id"));
		dishe.setDishe_name(rs.getString("dishe_name"));
		dishe.setDishe_category(rs.getString("dishe_category"));
		dishe.setDishe_info(rs.getString("dishe_info"));
		dishe.setDishe_images(rs.getString("dishe_images"));
		dishe.setDishe_price(rs.getDouble("dishe_price"));
		dishe.setDishe_total(rs.getInt("dishe_total"));
		dishe.setDishe_surplus(rs.getInt("dishe_surplus"));
		return dishe;
	}

	/*public static void main(String[] args) {
		DisheDao disheDao = new DisheDaoImpl();
		List<Dishe> list = disheDao.queryList(null, null);
		System.out.println(list);
	}*/
}
