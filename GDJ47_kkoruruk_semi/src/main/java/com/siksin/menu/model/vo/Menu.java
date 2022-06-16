package com.siksin.menu.model.vo;

import com.siksin.member.model.vo.Member;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class Menu {
	private int menuId;
	private String storeId;
	private String menuName;
	private String menuDec;
	private String menuImg;
	private String menuThumb;
	

}
