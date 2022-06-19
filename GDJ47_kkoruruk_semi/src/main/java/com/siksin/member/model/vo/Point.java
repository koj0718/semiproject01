package com.siksin.member.model.vo;

import java.sql.Date;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Point {
	
	private String memId;
	private Date memDate;
	private String memInfo;
	private int point;

}
