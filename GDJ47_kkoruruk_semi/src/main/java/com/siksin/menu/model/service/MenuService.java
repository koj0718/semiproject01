package com.siksin.menu.model.service;


import java.sql.Connection;
import java.util.List;

import com.siksin.menu.model.dao.MenuDao;
import com.siksin.store.model.vo.Store;

import static com.siksin.common.JDBCTemplate.close;
import static com.siksin.common.JDBCTemplate.getConnection;

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
}


