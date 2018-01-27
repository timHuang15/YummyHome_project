package yummyhome.dao;

import java.util.List;

import yummyhome.entity.Dishe;

public interface DisheDao {
	/*根据条件列出所有菜品*/
	public List<Dishe> queryList(String whereSql,Object[] params);
	/*根据ID查处菜品*/
	public Dishe queryById(Integer id);
	/*根据ID删除菜品*/
	public void delete(Integer id);
	/*根据ID删除多份菜品*/
	public void delete(Integer[] ids);
	/*修改菜品信息*/
	public void update(Dishe d);
}
