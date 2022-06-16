package com.siksin.store.model.vo;



public class Store {
	private String storeName;
	private String storeThumb;
	private String distance;
	private int deleveryTime;
	private int deleveryTip;
	private int pickYN;
	
	public Store() {
		// TODO Auto-generated constructor stub
	}

	public Store(String storeName, String storeThumb, String distance, int deleveryTime, int deleveryTip, int pickYN) {
		super();
		this.storeName = storeName;
		this.storeThumb = storeThumb;
		this.distance = distance;
		this.deleveryTime = deleveryTime;
		this.deleveryTip = deleveryTip;
		this.pickYN = pickYN;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getStoreThumb() {
		return storeThumb;
	}

	public void setStoreThumb(String storeThumb) {
		this.storeThumb = storeThumb;
	}

	public String getDistance() {
		return distance;
	}

	public void setDistance(String distance) {
		this.distance = distance;
	}

	public int getDeleveryTime() {
		return deleveryTime;
	}

	public void setDeleveryTime(int deleveryTime) {
		this.deleveryTime = deleveryTime;
	}

	public int getDeleveryTip() {
		return deleveryTip;
	}

	public void setDeleveryTip(int deleveryTip) {
		this.deleveryTip = deleveryTip;
	}

	public int getPickYN() {
		return pickYN;
	}

	public void setPickYN(int pickYN) {
		this.pickYN = pickYN;
	}

	@Override
	public String toString() {
		return "Store [storeName=" + storeName + ", storeThumb=" + storeThumb + ", distance=" + distance
				+ ", deleveryTime=" + deleveryTime + ", deleveryTip=" + deleveryTip + ", pickYN=" + pickYN + "]";
	}
	
	
	
}

