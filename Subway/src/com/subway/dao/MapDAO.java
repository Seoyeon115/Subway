package com.subway.dao;

import java.util.ArrayList;

import com.subway.vo.StoreVO;

public class MapDAO extends DBconn {
	public boolean getInsertResult(StoreVO vo) {
		boolean result = false;
		String sql = " insert into subway_store values(?,?,?,?) ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getSname());
			pstmt.setString(2, vo.getSaddr());
			pstmt.setString(3, vo.getLatitude());
			pstmt.setString(4, vo.getLongitude());
			
			int value = pstmt.executeUpdate();
			
			if(value != 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	public StoreVO getStoreName(String lat, String lng) {
		StoreVO vo = new StoreVO();
		String sql = " select sname from subway_store where latitude = ? and longitude = ? ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, lat);
			pstmt.setString(2, lng);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo.setSname(rs.getString(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	public ArrayList<StoreVO> getStorelist(String lat, String lng){
		ArrayList<StoreVO> slist = new ArrayList<StoreVO>();
		String sql = " select sname from subway_store where latitude = ? and longitude = ? ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, lat);
			pstmt.setString(2, lng);
			while(rs.next()) {
				StoreVO vo = new StoreVO();
				vo.setSname(rs.getString(1));
				slist.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return slist;
	}
}
