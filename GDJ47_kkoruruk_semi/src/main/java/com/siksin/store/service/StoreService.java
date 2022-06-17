package com.siksin.store.service;

import java.sql.Connection;

import static com.siksin.common.JDBCTemplate.*;

import com.siksin.store.dao.StoreDao;
import com.siksin.store.model.vo.Store;

public class StoreService {
	
	private StoreDao dao=new StoreDao();
	
	public Store selectStoreId(String id) {
		Connection conn=getConnection();
		Store s=dao.selectStoreId(conn,id);
		close(conn);
		return s;
	}

}
