package yummyhome.dao;

import java.util.List;

import yummyhome.entity.Table;

public interface TableDao {
	/*添加桌子记录*/
	public void save(Table t);
	/*根据ID查找桌子*/
	public Table queryById(Integer id);
	/*列出所有桌子*/
	public List<Table> queryList();
	/*根据ID删除桌子*/
	public void delete(Integer id);
	/*根据ID删除多张桌子*/
	public void delete(Integer[] ids);
	/*修改桌子信息*/
	public void update(Table t);
}
