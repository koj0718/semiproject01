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
}
