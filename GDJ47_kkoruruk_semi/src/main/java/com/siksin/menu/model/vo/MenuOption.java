package com.siksin.menu.model.vo;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class MenuOption {
	
	private int menuOpId;
	private int menuId;
	private String menuOpName;
	private int menuOpPrice;

}
