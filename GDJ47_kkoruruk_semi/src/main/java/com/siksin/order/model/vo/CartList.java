package com.siksin.order.model.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter	
@Setter
@ToString
@AllArgsConstructor
public class CartList {
	private String storeId;
	private String storeName;
	int cartTotal;
	private int deleveryTip;
	
	List<Cart> cart;
}
