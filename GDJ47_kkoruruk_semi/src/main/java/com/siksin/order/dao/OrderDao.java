package com.siksin.order.dao;

import static com.siksin.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.siksin.order.model.vo.Order;
import com.siksin.order.model.vo.OrderList;


public class OrderDao {
	
	private Properties prop=new Properties();

	public OrderDao() {
		String path=OrderDao.class.getResource("/sql/sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	/*
	 * public int insertAddress(Connection conn, Order o) { PreparedStatement
	 * pstmt=null; int result=0; try {
	 * pstmt=conn.prepareStatement(prop.getProperty("insertAddress"));
	 * pstmt.setString(1, o.getDeleveryAddress2()); pstmt.setString(2,
	 * o.getDeleveryAddress3()); result=pstmt.executeUpdate(); }catch(SQLException
	 * e) { e.printStackTrace(); }finally { close(pstmt); }return result; }
	 */
	
	
	
	
	public List<OrderList> searchOrderList(Connection conn, String  loginId,
			int cPage, int numPerpage){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		List<OrderList> result=new ArrayList();
		
		
		
		String sql=prop.getProperty("orderList");
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, loginId);
			pstmt.setInt(2, (cPage-1)*numPerpage+1);
			pstmt.setInt(3, cPage*numPerpage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				
				result.add(OrderDao.getOrderList(rs));
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
			
		}return result;
	}
	
	
	public int searchOrderCount(Connection conn, String loginId) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=prop.getProperty("searchMenuCount");
		int result=0;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+loginId+"%");
			rs=pstmt.executeQuery();
			if(rs.next()) result=rs.getInt(1);
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return result;
		
	}
	

	
	
	public static Order getOrder(ResultSet rs) throws SQLException {		
		return Order.builder()
				.orderNum(rs.getInt("order_num"))
				.storeId(rs.getString("store_id"))
				.memId(rs.getString("mem_id"))
				.orderDate(rs.getDate("order_date"))
				.payMethod(rs.getString("pay_method"))
				.deleveryStatus(rs.getString("delevery_status"))
				.memPhone(rs.getString("mem_phone"))
				.deleveryAddress1(rs.getInt("delevery_address1"))
				.deleveryAddress2(rs.getString("delevery_address2"))
				.deleveryAddress3(rs.getString("delevery_address3"))
				.totalPrice(rs.getInt("total_price"))
				.usedPoint(rs.getInt("used_point"))
				.request(rs.getString("request"))
				.impUid(rs.getString("imp_uid"))
				.build();
	}
	
	public static OrderList getOrderList(ResultSet rs) {
		OrderList ol=null;
		try {
			ol=new OrderList();
			ol.setOrderNum(rs.getInt("ORDER_NUM"));
			ol.setOrderDate(rs.getDate("ORDER_DATE"));
			ol.setTotalPrice(rs.getInt("ORDER_PRICE"));
			ol.setStoreThumb(rs.getString("STORE_THUMB"));
			ol.setStoreName(rs.getString("STORE_NAME"));
			
	
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return ol;
	}
}
