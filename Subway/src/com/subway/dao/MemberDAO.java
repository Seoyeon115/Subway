package com.subway.dao;

import java.sql.*;
import java.util.*;

import com.subway.vo.*;

public class MemberDAO extends DBconn {
	public String Certification(String name, String hp,String id) {
		String result ="";
		String sql = "select email from subway_member where name = ? and hp = ? and email = ?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, name);
			pstmt.setString(2, hp);
			pstmt.setString(3, id);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				result += rs.getString(1);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(result);
		return result;
	}
	
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
	
	public String getUserPass(String id) {
		String to = "";
		String sql = "select pass from subway_member where email = ?";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				to = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return to;
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
	
	public String getUserEmail_ID(String id) {
		String to = "";
		String sql = "select email from subway_member where email = ?";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				to = rs.getString(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return to;
	}
	
	public MemberVO getInfo(String email) {
		MemberVO vo = new MemberVO();
		String sql = " select email,name,hp,addr from subway_member where email=? ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setEmail(rs.getString(1));
				vo.setName(rs.getString(2));
				vo.setHp(rs.getString(3));
				vo.setAddr(rs.getString(4));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
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