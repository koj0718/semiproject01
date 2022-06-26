package com.siksin.review.service;

import static com.siksin.common.JDBCTemplate.close;
import static com.siksin.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import com.siksin.order.model.vo.OrderList;
import com.siksin.review.dao.ReviewDao;
import com.siksin.review.model.vo.Review;
import com.siksin.review.model.vo.ReviewManage;

public class ReviewService {

	
private ReviewDao dao=new ReviewDao();
	

	
	
	public List<ReviewManage> reviewManage(String loginId,int cPage,int numPerpage){
		Connection conn=getConnection();
		List<ReviewManage> result=dao.reviewManage(conn,loginId,cPage,numPerpage);
		close(conn);
		return result;
	}
	
	public int reviewManageCount(String loginId) {
		Connection conn=getConnection();
		int result=dao.reviewManageCount(conn,loginId);
		close(conn);
		return result;
	}
	
	
	public List<ReviewManage> searchReviewListWeek(String loginId,int cPage,int numPerpage){
		Connection conn=getConnection();
		List<ReviewManage> result=dao.searchReviewListWeek(conn,loginId,cPage,numPerpage);
		close(conn);
		return result;
	}
	
	public int searchReviewCountWeek(String loginId) {
		Connection conn=getConnection();
		int result=dao.searchReviewCountWeek(conn,loginId);
		close(conn);
		return result;
	}
	
	
	
	public List<ReviewManage> searchReviewListMonth(String loginId,int cPage,int numPerpage){
		Connection conn=getConnection();
		List<ReviewManage> result=dao.searchReviewListMonth(conn,loginId,cPage,numPerpage);
		close(conn);
		return result;
	}

	public int searchReviewCountMonth(String loginId) {
		Connection conn=getConnection();
		int result=dao.searchReviewCountMonth(conn,loginId);
		close(conn);
		return result;
	}
	
	
	public List<ReviewManage> searchReviewList3Month(String loginId,int cPage,int numPerpage){
		Connection conn=getConnection();
		List<ReviewManage> result=dao.searchReviewList3Month(conn,loginId,cPage,numPerpage);
		close(conn);
		return result;
	}

	public int searchReviewCount3Month(String loginId) {
		Connection conn=getConnection();
		int result=dao.searchReviewCount3Month(conn,loginId);
		close(conn);
		return result;
	}
	
	
	
	public List<ReviewManage> searchReviewListPeriod(String loginId,String searchPeriod,String searchPeriod2,int cPage,int numPerpage){
		Connection conn=getConnection();
		List<ReviewManage> result=dao.searchReviewListPeriod(conn,loginId,searchPeriod,searchPeriod2,cPage,numPerpage);
		close(conn);
		return result;
	}

	public int searchReviewCountPeriod(String loginId, String searchPeriod, String searchPeriod2) {
		Connection conn=getConnection();
		int result=dao.searchReviewCountPeriod(conn,loginId,searchPeriod,searchPeriod2);
		close(conn);
		return result;
	}
}
