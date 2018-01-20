package yummyhome.dao;

import java.util.List;

import yummyhome.entity.Table;

public interface TableDao {

	/*查出所有桌子信息*/
	public List<Table> queryList();
}
