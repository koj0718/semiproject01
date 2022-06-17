package com.siksin.order.model.vo;

import java.sql.Date;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Order {
	
	private int orderNum;
	private String storeId;
	private String memId;
	private Date orderDate;
	private String payMethod;
	private String deleveryStatus;
	private String memPhone;
	private int deleveryAddress1;
	private String deleveryAddress2;
	private String deleveryAddress3;
	private int totalPrice;
	private int usedPoint;
	private String request;
	private String impUid;

}
