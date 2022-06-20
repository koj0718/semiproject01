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

import com.siksin.member.model.vo.Member;
import com.siksin.order.model.vo.Order;
import com.siksin.store.model.vo.Store;


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
	
	
	
	
	public List<Order> searchOrderList(Connection conn, String  loginId,
			int cPage, int numPerpage){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<Order> result=new ArrayList();
		String sql=prop.getProperty("searchMenu");
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+loginId+"%");
			pstmt.setInt(2, (cPage-1)*numPerpage+1);
			pstmt.setInt(3, cPage*numPerpage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
//				result.add(getOrder(rs));  getOrder 만들거나 직접입력하기.
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
	
	
	
	
	
	
	
	
	public static Order getMember(ResultSet rs) throws SQLException {		
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
}
