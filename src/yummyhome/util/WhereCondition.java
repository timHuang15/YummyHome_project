package yummyhome.util;

public class WhereCondition {
	/**
	 * where条件
	 * */
	private String whereSql;
	private Object[] whereParams;
	public String getWhereSql() {
		return whereSql;
	}
	public void setWhereSql(String whereSql) {
		this.whereSql = whereSql;
	}
	public Object[] getWhereParams() {
		return whereParams;
	}
	public void setWhereParams(Object[] whereParams) {
		this.whereParams = whereParams;
	}
	
	
}
