package com.siksin.menu.dao;



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

import com.siksin.menu.model.vo.Menu;
import com.siksin.store.model.vo.Store;

public class MenuDao {

	
	
	private Properties prop=new Properties();
	
	public MenuDao() {
		String path=MenuDao.class.getResource("/sql/menu_sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	
	public List<Store> searchMenuList(Connection conn, String  keyword,
			int cPage, int numPerpage){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<Store> result=new ArrayList();
		String sql=prop.getProperty("searchMenu");
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+keyword+"%");
			pstmt.setInt(2, (cPage-1)*numPerpage+1);
			pstmt.setInt(3, cPage*numPerpage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				result.add(getMember(rs));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return result;
	}
	
	
	public int searchMenuCount(Connection conn, String keyword) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=prop.getProperty("searchMemberCount");
		int result=0;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+keyword+"%");
			rs=pstmt.executeQuery();
			if(rs.next()) result=rs.getInt(1);
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return result;
		
	}
	
	
	public static Store getMember(ResultSet rs) {
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
		}
		return s;
	}
	
	public List<Menu> searchStoreDeatil(Connection conn, String  storeId){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<Menu> menuList=new ArrayList();	
		try {
				
			pstmt=conn.prepareStatement(prop.getProperty("searchStoreDetailId"));
			pstmt.setString(1, storeId);			
			rs=pstmt.executeQuery();
			while(rs.next()) {				
				menuList.add(getMenu(rs));							
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return menuList;
	}
	
	private Menu getMenu(ResultSet rs) throws SQLException{
		return Menu.builder()
				.menuId(rs.getInt("menu_id"))
				.storeId(rs.getString("store_id"))
				.menuName(rs.getString("menu_name"))
				.menuPrice(rs.getInt("menu_price"))
				.menuDec(rs.getString("menu_dec"))
				.menuThumb(rs.getString("menu_thumb"))
				.build();
	}
	
}
