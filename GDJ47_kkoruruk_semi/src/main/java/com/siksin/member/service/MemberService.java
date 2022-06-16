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

}
