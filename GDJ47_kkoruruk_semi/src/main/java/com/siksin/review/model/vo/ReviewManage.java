package com.siksin.review.model.vo;

import java.sql.Date;

public class ReviewManage {

	
	private String reviewContent;
	private Date reviewDate;
	private int totalPrice;
	private String storeThumb;
	private String storeName;
	private int rNum;
	
	public ReviewManage() {
		// TODO Auto-generated constructor stub
	}

	public ReviewManage(String reviewContent, Date reviewDate, int totalPrice, String storeThumb, String storeName,
			int rNum) {
		super();
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
		this.totalPrice = totalPrice;
		this.storeThumb = storeThumb;
		this.storeName = storeName;
		this.rNum = rNum;
	}

	public String getReviewContent() {
		return reviewContent;
	}

	public void setReviewContent(String reviewContent) {
		this.reviewContent = reviewContent;
	}

	public Date getReviewDate() {
		return reviewDate;
	}

	public void setReviewDate(Date reviewDate) {
		this.reviewDate = reviewDate;
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

	public int getrNum() {
		return rNum;
	}

	public void setrNum(int rNum) {
		this.rNum = rNum;
	}

	@Override
	public String toString() {
		return "ReviewManage [reviewContent=" + reviewContent + ", reviewDate=" + reviewDate + ", totalPrice="
				+ totalPrice + ", storeThumb=" + storeThumb + ", storeName=" + storeName + ", rNum=" + rNum + "]";
	}
	
	
	
}
