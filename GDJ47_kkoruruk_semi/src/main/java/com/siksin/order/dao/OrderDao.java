package com.siksin.order.dao;

import static com.siksin.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.siksin.member.model.vo.Member;
import com.siksin.order.model.vo.Order;


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
