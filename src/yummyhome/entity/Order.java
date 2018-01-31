package yummyhome.entity;

import java.sql.Date;

public class Order {
	/*订单ID*/
	private Integer order_id;
	/*获取顾客信息*/
	private Customer customer;
	/*获取座位信息*/
	private Table table;
	/*下单时间*/
	private Date order_time;
	/*订单状态*/
	private String order_state;
	/*预约时间*/
	private Date book_time;
	
	/*订单合计*/
	private Double amount_to;
	
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Table getTable() {
		return table;
	}
	public void setTable(Table table) {
		this.table = table;
	}
	public Date getOrder_time() {
		return order_time;
	}
	public void setOrder_time(Date order_time) {
		this.order_time = order_time;
	}
	public String getOrder_state() {
		return order_state;
	}
	public void setOrder_state(String order_state) {
		this.order_state = order_state;
	}
	public Date getBook_time() {
		return book_time;
	}
	public void setBook_time(Date book_time) {
		this.book_time = book_time;
	}
	
	public Double getAmount_to() {
		return amount_to;
	}
	public void setAmount_to(Double amount_to) {
		this.amount_to = amount_to;
	}
	
	public Integer getOrder_id() {
		return order_id;
	}
	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}
	
	
	
	
}
