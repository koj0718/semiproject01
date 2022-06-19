package com.siksin.order.service;



import static com.siksin.common.JDBCTemplate.close;
import static com.siksin.common.JDBCTemplate.commit;
import static com.siksin.common.JDBCTemplate.getConnection;
import static com.siksin.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.siksin.order.dao.OrderDao;
import com.siksin.order.model.vo.Order;

public class OrderService {
	
	private OrderDao dao=new OrderDao();
	
	/*
	 * public int insertAddress(Order o) { Connection conn=getConnection(); int
	 * result=dao.insertAddress(conn,o); if(result>0) commit(conn); else
	 * rollback(conn); close(conn); return result;
	 * 
	 * }
	 */
	
	
}
