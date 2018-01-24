package yummyhome.dao;

import java.util.List;

import yummyhome.entity.Table;

public interface TableDao {
	/*�������*/
	public void save(Table t);
	/*����ID���ҵ�����¼*/
	public Table queryById(Integer id);
	/*�������������Ϣ*/
	public List<Table> queryList();
	/*��ID����ɾ��*/
	public void delete(Integer id);
	/*��ID���ɾ��*/
	public void delete(Integer[] ids);
	/*�޸ļ�¼*/
	public void update(Table t);
}
