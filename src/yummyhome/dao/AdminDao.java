package yummyhome.dao;

import yummyhome.entity.Admin;

public interface AdminDao {
	/*根据管理员用户名查找*/
	public Admin queryByUsername(String username); 
	
}
