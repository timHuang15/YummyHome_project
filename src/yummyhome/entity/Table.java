package yummyhome.entity;

public class Table {
	/*����ID*/
	private Integer table_id;
	/*���ӿ�������*/
	private Integer table_people;
	/*��������*/
	private Integer table_total;
	/*����ʣ����*/
	private Integer table_surplus;
	/*������*/
	private Double table_price;
	public Integer getTable_id() {
		return table_id;
	}
	public void setTable_id(Integer table_id) {
		this.table_id = table_id;
	}
	public Integer getTable_people() {
		return table_people;
	}
	public void setTable_people(Integer table_people) {
		this.table_people = table_people;
	}
	public Integer getTable_total() {
		return table_total;
	}
	public void setTable_total(Integer table_total) {
		this.table_total = table_total;
	}
	public Integer getTable_surplus() {
		return table_surplus;
	}
	public void setTable_surplus(Integer table_surplus) {
		this.table_surplus = table_surplus;
	}
	public Double getTable_price() {
		return table_price;
	}
	public void setTable_price(Double table_price) {
		this.table_price = table_price;
	}
	@Override
	public String toString() {
		return "Table [table_id=" + table_id + ", table_people=" + table_people + ", table_total=" + table_total
				+ ", table_surplus=" + table_surplus + ", table_price=" + table_price + "]";
	}
	
	
}
