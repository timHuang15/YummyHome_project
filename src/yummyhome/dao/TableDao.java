package yummyhome.dao;

import java.util.List;

import yummyhome.entity.Table;

public interface TableDao {

	/*�������������Ϣ*/
	public List<Table> queryList();
	/*��ID����ɾ��*/
	public void delete(Integer id);
	/*��ID���ɾ��*/
	public void delete(Integer[] ids);
}
