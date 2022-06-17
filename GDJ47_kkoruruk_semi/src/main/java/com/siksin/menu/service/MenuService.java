package com.siksin.menu.service;


import static com.siksin.common.JDBCTemplate.close;
import static com.siksin.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.siksin.menu.dao.MenuDao;
import com.siksin.menu.model.vo.Menu;
import com.siksin.store.model.vo.Store;

public class MenuService {
	
	
	
	private MenuDao dao=new MenuDao();

	public List<Store> searchMenuList(String keyword,int cPage,int numPerpage){
		Connection conn=getConnection();
		List<Store> result=dao.searchMenuList(conn,keyword,cPage,numPerpage);
		close(conn);
		return result;
	}
	
	public int searchMenuCount(String keyword) {
		Connection conn=getConnection();
		int result=dao.searchMenuCount(conn,keyword);
		close(conn);
		return result;
	}
	
	public List<Menu> searchStoreDeatil(String storeId){
		Connection conn=getConnection();
		List<Menu> menuList=dao.searchStoreDeatil(conn,storeId);
		close(conn);
		return menuList;
	}
}


