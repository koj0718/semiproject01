package com.siksin.order.service;



import static com.siksin.common.JDBCTemplate.close;
import static com.siksin.common.JDBCTemplate.commit;
import static com.siksin.common.JDBCTemplate.getConnection;
import static com.siksin.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import com.siksin.order.dao.OrderDao;
import com.siksin.order.model.vo.Order;
import com.siksin.store.model.vo.Store;

public class OrderService {
	
	private OrderDao dao=new OrderDao();
	
	/*
	 * public int insertAddress(Order o) { Connection conn=getConnection(); int
	 * result=dao.insertAddress(conn,o); if(result>0) commit(conn); else
	 * rollback(conn); close(conn); return result;
	 * 
	 * }
	 */
	
	
	public List<Order> searchOrderList(String loginId,int cPage,int numPerpage){
		Connection conn=getConnection();
		List<Order> result=dao.searchOrderList(conn,loginId,cPage,numPerpage);
		close(conn);
		return result;
	}
	
	public int searchOrderCount(String loginId) {
		Connection conn=getConnection();
		int result=dao.searchOrderCount(conn,loginId);
		close(conn);
		return result;
	}
	
	
}
