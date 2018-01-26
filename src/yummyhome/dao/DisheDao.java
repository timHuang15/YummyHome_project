package yummyhome.dao;

import java.util.List;

import yummyhome.entity.Dishe;

public interface DisheDao {
	/*根据条件列出所有菜品*/
	public List<Dishe> queryList(String whereSql,Object[] params);
}
