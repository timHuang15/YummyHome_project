package yummyhome.entity;

public class Customer {
	/*顾客ID*/
	private Integer customer_id;
	/*顾客姓名*/
	private String customer_name;
	/*顾客电话*/
	private String customer_phone;
	/*顾客用户名*/
	private String customer_user_name;
	/*顾客密码*/
	private String customer_pwd;
	
	public Integer getCustomer_id() {
		return customer_id;
	}
	public void setCustomer_id(Integer customer_id) {
		this.customer_id = customer_id;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getCustomer_phone() {
		return customer_phone;
	}
	public void setCustomer_phone(String customer_phone) {
		this.customer_phone = customer_phone;
	}
	public String getCustomer_user_name() {
		return customer_user_name;
	}
	public void setCustomer_user_name(String customer_user_name) {
		this.customer_user_name = customer_user_name;
	}
	public String getCustomer_pwd() {
		return customer_pwd;
	}
	public void setCustomer_pwd(String customer_pwd) {
		this.customer_pwd = customer_pwd;
	}
	@Override
	public String toString() {
		return "Customer [customer_id=" + customer_id + ", customer_name=" + customer_name + ", customer_phone="
				+ customer_phone + ", customer_user_name=" + customer_user_name + ", customer_pwd=" + customer_pwd
				+ "]";
	}
	
	
}
