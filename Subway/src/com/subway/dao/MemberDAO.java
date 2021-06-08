package com.subway.dao;

import java.sql.*;
import java.util.*;

import com.subway.vo.*;

public class MemberDAO extends DBconn {
	
	public String Certification(String name, String hp) {
		String result ="";
		String sql = "select email from subway_member where name = ? and hp = ?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, name);
			pstmt.setString(2, hp);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				result += rs.getString(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	public String getUserEmail(String hp) {
		String to = "";
		String sql = "select email from subway_member where hp = ?";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, hp);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				to = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return to;
	}
	
	
	
	
	public boolean getInsertResult(MemberVO vo){
		boolean result = false;
		String sql = "insert into subway_member values(?,?,?,?,?,?,?)";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getEmail());
			pstmt.setString(2, vo.getPass());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getHp());
			pstmt.setString(5, vo.getPost());
			pstmt.setString(6, vo.getAddr());
			pstmt.setString(7, vo.getDaddr());
			
			int val = pstmt.executeUpdate();
			
			if(val != 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	//로그인 처리 -- count 함수를 사용
	public boolean getLoginResult(String email, String pass) {
			boolean result = false;
			String sql = "select count(*) from subway_member where email=? and pass=?";
			getPreparedStatement(sql);
			
			try {
				pstmt.setString(1, email);
				pstmt.setString(2, pass);
				
				rs = pstmt.executeQuery();
				if(rs.next()) {
					if(rs.getInt(1) == 1) result = true;
					
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			close();
			
			return result;
	}
	
	//회원정보 체크 -- count 함수를 사용
	public boolean getCheckResult(String email, String pass) {
			boolean result = false;
			String sql = "select count(*) from subway_member where email=? and pass=?";
			getPreparedStatement(sql);
			
			try {
				pstmt.setString(1, email);
				pstmt.setString(2, pass);
				
				rs = pstmt.executeQuery();
				if(rs.next()) {
					if(rs.getInt(1) == 1) result = true;
					
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			close();
			
			return result;
	}
}