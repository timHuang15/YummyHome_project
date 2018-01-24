package yummyhome.dao;

import java.util.List;

import yummyhome.entity.Table;

public interface TableDao {
	/*保存添加*/
	public void save(Table t);
	/*根据ID查找单条记录*/
	public Table queryById(Integer id);
	/*查出所有桌子信息*/
	public List<Table> queryList();
	/*按ID单个删除*/
	public void delete(Integer id);
	/*按ID多个删除*/
	public void delete(Integer[] ids);
	/*修改记录*/
	public void update(Table t);
}
