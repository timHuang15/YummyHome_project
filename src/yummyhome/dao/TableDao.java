package yummyhome.dao;

import java.util.List;

import yummyhome.entity.Table;

public interface TableDao {

	/*查出所有桌子信息*/
	public List<Table> queryList();
	/*按ID单个删除*/
	public void delete(Integer id);
	/*按ID多个删除*/
	public void delete(Integer[] ids);
}
