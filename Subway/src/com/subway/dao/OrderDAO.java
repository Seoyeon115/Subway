package com.subway.dao;

import java.util.ArrayList;

import com.subway.vo.FinalOrderVO;

public class OrderDAO extends DBconn {
	public boolean getOrderResult(String idx, String email) {
		boolean result = false;
		String sql = " insert into subway_order values('O_'||sequ_mycgv_notice.nextval,?,?,?,?,?,?) where idx = ? and email = ? ";
		getPreparedStatement(sql);
		
		try {
			FinalOrderVO vo = new FinalOrderVO();
			pstmt.setString(1, vo.getO_EAT());
			pstmt.setString(2, vo.getHP());
			pstmt.setString(3, vo.getO_MESSAGE());
			pstmt.setString(4, vo.getO_COUPON());
			pstmt.setInt(5, vo.getO_AMT());
			pstmt.setInt(6, vo.getO_PRICE());
			
			int value = pstmt.executeUpdate();
			
			if(value != 0) {
				result = true;	
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		
		return result;
	}
	
}
