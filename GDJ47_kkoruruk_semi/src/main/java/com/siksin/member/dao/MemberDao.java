package com.siksin.member.dao;

import static com.siksin.common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import com.siksin.member.model.vo.Member;

public class MemberDao {
	
	private Properties prop=new Properties();
	
	public MemberDao() {
		String path=MemberDao.class.getResource("/sql/sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public int memberEnroll(Connection conn, Member m) {
		PreparedStatement pstmt=null;
		int result=0;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("insertMemberEnroll"));
			pstmt.setString(1, m.getMemId());
			pstmt.setString(2, m.getMemName());
			pstmt.setString(3, m.getMemPwd());			
			pstmt.setString(4, m.getMemEmail());
			pstmt.setString(5, m.getMemNick());
			pstmt.setString(6, m.getMemPhone());
			result=pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}return result;
	}
	
	public Member searchMember(Connection conn, String userId, String password) {
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		Member m=null;
		try {
			pstmt=conn.prepareStatement(prop.getProperty("selectMemberLogin"));			
			pstmt.setString(1,userId);
			pstmt.setString(2, password);	
			rs=pstmt.executeQuery();
			if(rs.next()) {
				m=getMember(rs);
			}
			System.out.println(m);
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}return m;
		
	}
	
	public int updateMember(Connection conn, Member m) {
		
		PreparedStatement pstmt=null;
		int result=0;
		
		try {
			pstmt=conn.prepareStatement(prop.getProperty("updateMember"));
			pstmt.setString(1, m.getMemName());
			pstmt.setString(2, m.getMemPwd());
			pstmt.setString(3, m.getMemEmail());
			pstmt.setString(4, m.getMemNick());
			pstmt.setString(5, m.getMemPhone());
			pstmt.setString(6, m.getMemId());
			result=pstmt.executeUpdate();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;
	}
	
	public static Member getMember(ResultSet rs) throws SQLException {		
		return Member.builder()
				.memId(rs.getString("mem_id"))
				.memName(rs.getString("mem_name"))
				.memPwd(rs.getString("mem_pwd"))
				.memEmail(rs.getString("mem_email"))
				.memNick(rs.getString("mem_nick"))
				.memPoint(rs.getInt("mem_point"))
				.memPhone(rs.getString("mem_phone"))
				.memRank(rs.getString("mem_rank"))
				.role(rs.getString("role"))
				.build();
	}

}
