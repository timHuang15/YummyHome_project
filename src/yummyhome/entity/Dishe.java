package yummyhome.entity;

import java.math.BigDecimal;

public class Dishe {
	/*��ƷID*/
	private Integer dishe_id;
	/*��Ʒ����*/
	private String dishe_name;
	/*��Ʒ���*/
	private String dishe_category;
	/*��Ʒ��Ϣ*/
	private String dishe_info;
	/*��ƷͼƬurl*/
	private String dishe_img_url;
	/*��Ʒ����*/
	private BigDecimal dishe_price;
	/*��Ʒ�����۶�*/
	private Integer dishe_total;
	/*��Ʒʣ����*/
	private Integer dishe_surplus;
	
	public Integer getDishe_id() {
		return dishe_id;
	}
	public void setDishe_id(Integer dishe_id) {
		this.dishe_id = dishe_id;
	}
	public String getDishe_name() {
		return dishe_name;
	}
	public void setDishe_name(String dishe_name) {
		this.dishe_name = dishe_name;
	}
	public String getDishe_category() {
		return dishe_category;
	}
	public void setDishe_category(String dishe_category) {
		this.dishe_category = dishe_category;
	}
	public String getDishe_info() {
		return dishe_info;
	}
	public void setDishe_info(String dishe_info) {
		this.dishe_info = dishe_info;
	}
	public String getDishe_img_url() {
		return dishe_img_url;
	}
	public void setDishe_img_url(String dishe_img_url) {
		this.dishe_img_url = dishe_img_url;
	}
	public BigDecimal getDishe_price() {
		return dishe_price;
	}
	public void setDishe_price(BigDecimal dishe_price) {
		this.dishe_price = dishe_price;
	}
	public Integer getDishe_total() {
		return dishe_total;
	}
	public void setDishe_total(Integer dishe_total) {
		this.dishe_total = dishe_total;
	}
	public Integer getDishe_surplus() {
		return dishe_surplus;
	}
	public void setDishe_surplus(Integer dishe_surplus) {
		this.dishe_surplus = dishe_surplus;
	}
}
