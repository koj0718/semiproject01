package com.siksin.store.dao;

import static com.siksin.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.siksin.store.model.vo.Store;

public class StoreDao {

	private Properties prop=new Properties();
	
	public StoreDao() {
		String path=StoreDao.class.getResource("/sql/menu_sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public Store selectStoreId(Connection conn, String id) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		Store s=null;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectStoreId"));
			pstmt.setString(1, id);
			rs=pstmt.executeQuery();
			if(rs.next()) s=getStore(rs);
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return s;
	}
	
	private Store getStore(ResultSet rs) {
		Store s=null;
		try {
			s=new Store();
			s.setStoreId(rs.getString("STORE_ID"));
			s.setStoreCategory(rs.getString("STORE_CATEGORY"));
			s.setStoreName(rs.getString("STORE_NAME"));
			s.setStoreAddress1(rs.getString("STORE_ADDRESS1"));
			s.setStoreAddress2(rs.getString("STORE_ADDRESS2"));
			s.setStoreAddress3(rs.getString("STORE_ADDRESS3"));
			s.setStorePhone(rs.getString("STORE_PHONE"));
			s.setStoreImg(rs.getString("STORE_IMG"));
			s.setStoreThumb(rs.getString("STORE_THUMB"));
			s.setOpeningTime(rs.getInt("OPENING_TIME"));
			s.setClosingTime(rs.getInt("CLOSING_TIME"));
			s.setMinDelevery(rs.getInt("MIN_DELEVERY"));
			s.setDeleveryTime(rs.getInt("DELEVERY_TIME"));
			s.setDeleveryTip(rs.getInt("DELEVERY_TIP"));
			s.setStoreDec(rs.getString("STORE_DEC"));
			s.setPickYN(rs.getInt("PICK_YN"));
			s.setCeoName(rs.getString("CEO_NAME"));
			s.setBusinessNum(rs.getString("BUSINESS_NUM"));
			s.setCeoPhone(rs.getString("CEO_PHONE"));
			s.setCeoAddress1(rs.getString("CEO_ADDRESS1"));
			s.setCeoAddress2(rs.getString("CEO_ADDRESS2"));
			s.setCeoAddress3(rs.getString("CEO_ADDRESS3"));
		}catch(SQLException e) {
			e.printStackTrace();
		}return s;
		
	}
	
	
}
