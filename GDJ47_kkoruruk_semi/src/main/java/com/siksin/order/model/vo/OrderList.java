package com.siksin.order.model.vo;

import java.sql.Date;

public class OrderList {

	private int orderNum;
	private Date orderDate;
	private int totalPrice;
	private String storeThumb;
	private String storeName;
	
	public OrderList() {
		// TODO Auto-generated constructor stub
	}

	public OrderList(int orderNum, Date orderDate, int totalPrice, String storeThumb, String storeName) {
		super();
		this.orderNum = orderNum;
		this.orderDate = orderDate;
		this.totalPrice = totalPrice;
		this.storeThumb = storeThumb;
		this.storeName = storeName;
	}

	public int getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getStoreThumb() {
		return storeThumb;
	}

	public void setStoreThumb(String storeThumb) {
		this.storeThumb = storeThumb;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	@Override
	public String toString() {
		return "OrderList [orderNum=" + orderNum + ", orderDate=" + orderDate + ", totalPrice=" + totalPrice
				+ ", storeThumb=" + storeThumb + ", storeName=" + storeName + "]";
	}
	
	
}
