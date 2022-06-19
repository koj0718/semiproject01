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
import com.siksin.menu.model.vo.MenuOption;

public class MenuOptionDao {
	
	private Properties prop=new Properties();
	
	public MenuOptionDao() {
		String path=MenuOptionDao.class.getResource("/sql/sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	public List<MenuOption> menuOptionSearch(Connection conn,int menuId){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		List<MenuOption> result=new ArrayList();	
		try {
				
			pstmt=conn.prepareStatement(prop.getProperty("searchMenuOptionMenuId"));
			pstmt.setInt(1, menuId);			
			rs=pstmt.executeQuery();
			while(rs.next()) {				
				result.add(getMenuOption(rs));							
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return result;
		
	}
	
	private MenuOption getMenuOption(ResultSet rs) throws SQLException{
		return MenuOption.builder()
				.menuOpId(rs.getInt("menuop_id"))
				.menuId(rs.getInt("menu_id"))
				.menuOpName(rs.getString("menuop_name"))
				.menuOpPrice(rs.getInt("menuop_price"))
				.build();
	}

}
