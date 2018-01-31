package yummyhome.entity;

import java.util.List;

public class OrderItem {
	/*单条预订信息ID*/
	private Integer item_id;
	/*通过菜品ID获得菜品信息:ID、名称、类别、价格*/
	private Dishe dishe;
	/*预订菜品的数量*/
	private Integer dishe_num;
	
	public Integer getItem_id() {
		return item_id;
	}
	public void setItem_id(Integer item_id) {
		this.item_id = item_id;
	}
	
	public Integer getDishe_num() {
		return dishe_num;
	}
	public void setDishe_num(Integer dishe_num) {
		this.dishe_num = dishe_num;
	}
	public Dishe getDishe() {
		return dishe;
	}
	public void setDishe(Dishe dishe) {
		this.dishe = dishe;
	}
	
	
	
	
}
