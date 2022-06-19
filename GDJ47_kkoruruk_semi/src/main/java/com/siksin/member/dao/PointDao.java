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
import com.siksin.member.model.vo.Point;

public class PointDao {
	
	private Properties prop=new Properties();
	
	public PointDao() {
		String path=PointDao.class.getResource("/sql/sql.properties").getPath();
		try {
			prop.load(new FileReader(path));
		}catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public static Point getPoint(ResultSet rs) throws SQLException {		
		return Point.builder()
				.memId(rs.getString("mem_id"))
				.memDate(rs.getDate("mem_date"))
				.memInfo(rs.getString("mem_info"))
				.point(rs.getInt("point"))
				.build();
	}

}
