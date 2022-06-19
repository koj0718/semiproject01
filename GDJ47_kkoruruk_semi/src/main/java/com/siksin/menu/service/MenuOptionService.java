package com.siksin.menu.service;

import static com.siksin.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.siksin.menu.dao.MenuOptionDao;
import com.siksin.menu.model.vo.MenuOption;

public class MenuOptionService {
	
	private MenuOptionDao dao=new MenuOptionDao();
	
	public List<MenuOption> menuOptionSearch(int menuId) {
		Connection conn=getConnection();
		List<MenuOption> result=dao.menuOptionSearch(conn,menuId);
		return result;
		
	}

}
