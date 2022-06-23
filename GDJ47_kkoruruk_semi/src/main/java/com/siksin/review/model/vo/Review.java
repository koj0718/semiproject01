package com.siksin.review.model.vo;

import java.sql.Date;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Review {
	private int orderNum;
	private String reviewContent;
	private String storeComment;
	private Date reviewDate;
	private String memId;
	private int starPoint;
	private String reviewImg;
	private String storeId;
	
	
}
