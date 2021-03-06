package com.siksin.review.dao;

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

import com.siksin.order.dao.OrderDao;
import com.siksin.order.model.vo.OrderList;
import com.siksin.review.model.vo.ReviewManage;

public class ReviewDao {
	private Properties prop=new Properties();

	public ReviewDao() {
		String path=OrderDao.class.getResource("/sql/sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	public List<ReviewManage> reviewManage(Connection conn, String  loginId,
			int cPage, int numPerpage){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		List<ReviewManage> result=new ArrayList();
		
		
		
		String sql=prop.getProperty("reviewManage");
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, loginId);
			pstmt.setInt(2, (cPage-1)*numPerpage+1);
			pstmt.setInt(3, cPage*numPerpage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				
				result.add(ReviewDao.getReviewManage(rs));
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
			
		}return result;
	}
	
	
	public int reviewManageCount(Connection conn, String loginId) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=prop.getProperty("reviewManageCount");
		int result=0;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, loginId);
			rs=pstmt.executeQuery();
			if(rs.next()) result=rs.getInt(1);
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return result;
		
	}
	
	
	
	public List<ReviewManage> searchReviewListWeek(Connection conn, String  loginId,
			int cPage, int numPerpage){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		List<ReviewManage> result=new ArrayList();
		
		
		
		String sql=prop.getProperty("reviewWeek");
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, loginId);
			pstmt.setInt(2, (cPage-1)*numPerpage+1);
			pstmt.setInt(3, cPage*numPerpage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				
				result.add(ReviewDao.getReviewManage(rs));
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
			
		}return result;
	}
	
	public int searchReviewCountWeek(Connection conn, String loginId) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=prop.getProperty("reviewCountWeek");
		int result=0;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, loginId);
			rs=pstmt.executeQuery();
			if(rs.next()) result=rs.getInt(1);
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return result;
		
	}
	
	
	
	
	public List<ReviewManage> searchReviewListMonth(Connection conn, String  loginId,
			int cPage, int numPerpage){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		List<ReviewManage> result=new ArrayList();
		
		
		
		String sql=prop.getProperty("reviewMonth");
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, loginId);
			pstmt.setInt(2, (cPage-1)*numPerpage+1);
			pstmt.setInt(3, cPage*numPerpage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				
				result.add(ReviewDao.getReviewManage(rs));
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
			
		}return result;
	}
	
	
	public int searchReviewCountMonth(Connection conn, String loginId) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=prop.getProperty("reviewCountMonth");
		int result=0;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, loginId);
			rs=pstmt.executeQuery();
			if(rs.next()) result=rs.getInt(1);
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return result;
		
	}
	
	
	public List<ReviewManage> searchReviewList3Month(Connection conn, String  loginId,
			int cPage, int numPerpage){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		List<ReviewManage> result=new ArrayList();
		
		
		
		String sql=prop.getProperty("review3Month");
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, loginId);
			pstmt.setInt(2, (cPage-1)*numPerpage+1);
			pstmt.setInt(3, cPage*numPerpage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				
				result.add(ReviewDao.getReviewManage(rs));
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
			
		}return result;
	}
	
	
	public int searchReviewCount3Month(Connection conn, String loginId) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=prop.getProperty("reviewCount3Month");
		int result=0;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, loginId);
			rs=pstmt.executeQuery();
			if(rs.next()) result=rs.getInt(1);
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return result;
		
	}
	
	


	public List<ReviewManage> searchReviewListPeriod(Connection conn, String  loginId,
			String searchPeriod,String searchPeriod2,int cPage, int numPerpage){
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		List<ReviewManage> result=new ArrayList();
		
		
		
		String sql=prop.getProperty("reviewtPeriod");
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, searchPeriod);
			pstmt.setString(2, searchPeriod2);
			pstmt.setString(3, loginId);
			pstmt.setInt(4, (cPage-1)*numPerpage+1);
			pstmt.setInt(5, cPage*numPerpage);
			rs=pstmt.executeQuery();
			while(rs.next()) {
				
				result.add(ReviewDao.getReviewManage(rs));
				
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
			
		}return result;
	}
	
	
	public int searchReviewCountPeriod(Connection conn, String loginId, String searchPeriod, String searchPeriod2) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql=prop.getProperty("reviewCountPeriod");
		int result=0;
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, searchPeriod);
			pstmt.setString(2, searchPeriod2);
			pstmt.setString(3, loginId);
			rs=pstmt.executeQuery();
			if(rs.next()) result=rs.getInt(1);
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return result;
		
	}
	
	
	
	public static ReviewManage getReviewManage(ResultSet rs) {
		
		ReviewManage rm=null;
		try {
			rm=new ReviewManage();
			rm.setReviewContent(rs.getString("REVIEW_CONTENT"));
			rm.setReviewDate(rs.getDate("REVIEW_DATE"));
//			rm.setTotalPrice(rs.getInt("TOTAL_PRICE"));
			rm.setStoreThumb(rs.getString("STORE_THUMB"));
			rm.setStoreName(rs.getString("STORE_NAME"));
			rm.setrNum(rs.getInt("RNUM"));
				
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return rm;
	}
}
