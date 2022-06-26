package com.siksin.member.service;

import static com.siksin.common.JDBCTemplate.close;
import static com.siksin.common.JDBCTemplate.commit;
import static com.siksin.common.JDBCTemplate.getConnection;
import static com.siksin.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.siksin.member.dao.MemberDao;
import com.siksin.member.model.vo.Member;

public class MemberService {
	
	private MemberDao dao=new MemberDao();
	
	public int memberEnroll(Member m) {
		Connection conn=getConnection();
		int result=dao.memberEnroll(conn,m);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;	
	}
	
	public Member searchMember(String userId, String password) {
		Connection conn=getConnection();
		Member m=dao.searchMember(conn,userId,password);
		close(conn);
		return m;
	}
	
	public int updateMember(Member m) {
		
		Connection conn=getConnection();
		int result=dao.updateMember(conn, m);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
		
	}
	
	public int updatePassword(String userId, String password) {
		
		Connection conn=getConnection();
		int result=dao.updatePassword(conn, userId, password);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
		
	}
	
	public int deleteMember(String userId, String password) {
		
		Connection conn=getConnection();
		int result=dao.deleteMember(conn, userId, password);
		if(result>0) commit(conn);
		else rollback(conn);
		close(conn);
		return result;
		
	}
	
	public Member selectMemberById(String userId) {
		Connection conn=getConnection();
		Member m=dao.selectMemberById(conn,userId);
		close(conn);
		return m;
		
	}

}
