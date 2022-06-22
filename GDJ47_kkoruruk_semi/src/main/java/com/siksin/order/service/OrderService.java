package com.siksin.order.service;



import static com.siksin.common.JDBCTemplate.close;
import static com.siksin.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.siksin.order.dao.OrderDao;
import com.siksin.order.model.vo.OrderList;

public class OrderService {
	
	private OrderDao dao=new OrderDao();
	
	/*
	 * public int insertAddress(Order o) { Connection conn=getConnection(); int
	 * result=dao.insertAddress(conn,o); if(result>0) commit(conn); else
	 * rollback(conn); close(conn); return result;
	 * 
	 * }
	 */
	
	
	public List<OrderList> searchOrderList(String loginId,int cPage,int numPerpage){
		Connection conn=getConnection();
		List<OrderList> result=dao.searchOrderList(conn,loginId,cPage,numPerpage);
		close(conn);
		return result;
	}
	
	public int searchOrderCount(String loginId) {
		Connection conn=getConnection();
		int result=dao.searchOrderCount(conn,loginId);
		close(conn);
		return result;
	}
	
	
	
	
	public List<OrderList> searchOrderListWeek(String loginId,int cPage,int numPerpage){
		Connection conn=getConnection();
		List<OrderList> result=dao.searchOrderListWeek(conn,loginId,cPage,numPerpage);
		close(conn);
		return result;
	}
	
	public int searchOrderCountWeek(String loginId) {
		Connection conn=getConnection();
		int result=dao.searchOrderCountWeek(conn,loginId);
		close(conn);
		return result;
	}
	
	
	public List<OrderList> searchOrderListMonth(String loginId,int cPage,int numPerpage){
		Connection conn=getConnection();
		List<OrderList> result=dao.searchOrderListMonth(conn,loginId,cPage,numPerpage);
		close(conn);
		return result;
	}

	public int searchOrderCountMonth(String loginId) {
		Connection conn=getConnection();
		int result=dao.searchOrderCountMonth(conn,loginId);
		close(conn);
		return result;
	}
	
	public List<OrderList> searchOrderList3Month(String loginId,int cPage,int numPerpage){
		Connection conn=getConnection();
		List<OrderList> result=dao.searchOrderList3Month(conn,loginId,cPage,numPerpage);
		close(conn);
		return result;
	}

	public int searchOrderCount3Month(String loginId) {
		Connection conn=getConnection();
		int result=dao.searchOrderCount3Month(conn,loginId);
		close(conn);
		return result;
	}

	
	
}
