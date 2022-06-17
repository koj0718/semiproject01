package com.siksin.store.model.vo;


public class Store {
	private String storeId;
	private String storeCategory;
	private String storeName;
	private String storeAddress1;
	private String storeAddress2;
	private String storeAddress3;
	private String storePhone;
	private String storeImg;
	private String storeThumb;
	private int openingTime;
	private int closingTime;
	private int minDelevery;
	private int deleveryTime;
	private int deleveryTip;
	private String storeDec;
	private int pickYN;
	private String ceoName;
	private String businessNum;
	private String ceoPhone;
	private String ceoAddress1;
	private String ceoAddress2;
	private String ceoAddress3;
	
	public Store() {
		// TODO Auto-generated constructor stub
	}

	public Store(String storeId, String storeCategory, String storeName, String storeAddress1, String storeAddress2,
			String storeAddress3, String storePhone, String storeImg, String storeThumb, int openingTime,
			int closingTime, int minDelevery, int deleveryTime, int deleveryTip, String storeDec, int pickYN,
			String ceoName, String businessNum, String ceoPhone, String ceoAddress1, String ceoAddress2,
			String ceoAddress3) {
		super();
		this.storeId = storeId;
		this.storeCategory = storeCategory;
		this.storeName = storeName;
		this.storeAddress1 = storeAddress1;
		this.storeAddress2 = storeAddress2;
		this.storeAddress3 = storeAddress3;
		this.storePhone = storePhone;
		this.storeImg = storeImg;
		this.storeThumb = storeThumb;
		this.openingTime = openingTime;
		this.closingTime = closingTime;
		this.minDelevery = minDelevery;
		this.deleveryTime = deleveryTime;
		this.deleveryTip = deleveryTip;
		this.storeDec = storeDec;
		this.pickYN = pickYN;
		this.ceoName = ceoName;
		this.businessNum = businessNum;
		this.ceoPhone = ceoPhone;
		this.ceoAddress1 = ceoAddress1;
		this.ceoAddress2 = ceoAddress2;
		this.ceoAddress3 = ceoAddress3;
	}

	public String getStoreId() {
		return storeId;
	}

	public void setStoreId(String storeId) {
		this.storeId = storeId;
	}

	public String getStoreCategory() {
		return storeCategory;
	}

	public void setStoreCategory(String storeCategory) {
		this.storeCategory = storeCategory;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getStoreAddress1() {
		return storeAddress1;
	}

	public void setStoreAddress1(String storeAddress1) {
		this.storeAddress1 = storeAddress1;
	}

	public String getStoreAddress2() {
		return storeAddress2;
	}

	public void setStoreAddress2(String storeAddress2) {
		this.storeAddress2 = storeAddress2;
	}

	public String getStoreAddress3() {
		return storeAddress3;
	}

	public void setStoreAddress3(String storeAddress3) {
		this.storeAddress3 = storeAddress3;
	}

	public String getStorePhone() {
		return storePhone;
	}

	public void setStorePhone(String storePhone) {
		this.storePhone = storePhone;
	}

	public String getStoreImg() {
		return storeImg;
	}

	public void setStoreImg(String storeImg) {
		this.storeImg = storeImg;
	}

	public String getStoreThumb() {
		return storeThumb;
	}

	public void setStoreThumb(String storeThumb) {
		this.storeThumb = storeThumb;
	}

	public int getOpeningTime() {
		return openingTime;
	}

	public void setOpeningTime(int openingTime) {
		this.openingTime = openingTime;
	}

	public int getClosingTime() {
		return closingTime;
	}

	public void setClosingTime(int closingTime) {
		this.closingTime = closingTime;
	}

	public int getMinDelevery() {
		return minDelevery;
	}

	public void setMinDelevery(int minDelevery) {
		this.minDelevery = minDelevery;
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

	public String getStoreDec() {
		return storeDec;
	}

	public void setStoreDec(String storeDec) {
		this.storeDec = storeDec;
	}

	public int getPickYN() {
		return pickYN;
	}

	public void setPickYN(int pickYN) {
		this.pickYN = pickYN;
	}

	public String getCeoName() {
		return ceoName;
	}

	public void setCeoName(String ceoName) {
		this.ceoName = ceoName;
	}

	public String getBusinessNum() {
		return businessNum;
	}

	public void setBusinessNum(String businessNum) {
		this.businessNum = businessNum;
	}

	public String getCeoPhone() {
		return ceoPhone;
	}

	public void setCeoPhone(String ceoPhone) {
		this.ceoPhone = ceoPhone;
	}

	public String getCeoAddress1() {
		return ceoAddress1;
	}

	public void setCeoAddress1(String ceoAddress1) {
		this.ceoAddress1 = ceoAddress1;
	}

	public String getCeoAddress2() {
		return ceoAddress2;
	}

	public void setCeoAddress2(String ceoAddress2) {
		this.ceoAddress2 = ceoAddress2;
	}

	public String getCeoAddress3() {
		return ceoAddress3;
	}

	public void setCeoAddress3(String ceoAddress3) {
		this.ceoAddress3 = ceoAddress3;
	}

	@Override
	public String toString() {
		return "Store [storeId=" + storeId + ", storeCategory=" + storeCategory + ", storeName=" + storeName
				+ ", storeAddress1=" + storeAddress1 + ", storeAddress2=" + storeAddress2 + ", storeAddress3="
				+ storeAddress3 + ", storePhone=" + storePhone + ", storeImg=" + storeImg + ", storeThumb=" + storeThumb
				+ ", openingTime=" + openingTime + ", closingTime=" + closingTime + ", minDelevery=" + minDelevery
				+ ", deleveryTime=" + deleveryTime + ", deleveryTip=" + deleveryTip + ", storeDec=" + storeDec
				+ ", pickYN=" + pickYN + ", ceoName=" + ceoName + ", businessNum=" + businessNum + ", ceoPhone="
				+ ceoPhone + ", ceoAddress1=" + ceoAddress1 + ", ceoAddress2=" + ceoAddress2 + ", ceoAddress3="
				+ ceoAddress3 + "]";
	}
	

	
}

