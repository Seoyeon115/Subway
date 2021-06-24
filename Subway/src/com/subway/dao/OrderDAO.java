package com.subway.dao;

import java.util.ArrayList;

import com.subway.vo.FinalOrderVO;
import com.subway.vo.MenuVO;
import com.subway.vo.OrderVO;
import com.subway.vo.SessionVO;
import com.subway.vo.StoreVO;

public class OrderDAO extends DBconn {
	
	//주문테이블 갯수 조회하기
	public int orderListCount(String email) {
		int result = 0;
		String sql = "select count(*) from subway_order_detail where email=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				result = rs.getInt(1);
			}
			
			System.out.println(result);
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return result;
		
	}
	
	//주문테이블에 주문데이터 입력
	public boolean getOrderResult(SessionVO svo, StoreVO snamevo, FinalOrderVO vo) {
		boolean result = false;
		String sql = " insert into subway_order values('O_'||sequ_subway_order.nextval,?,?,?,?,?,?,?,?) ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, svo.getEmail());
			pstmt.setString(2, snamevo.getSname());
			pstmt.setString(3, vo.getO_EAT());
			pstmt.setString(4, vo.getHP());
			pstmt.setString(5, vo.getO_MESSAGE());
			pstmt.setString(6, null);
			pstmt.setString(7, vo.getO_AMT());
			pstmt.setString(8, vo.getO_PRICE());
			
			int value = pstmt.executeUpdate();
			
			if(value != 0) {
				result = true;	
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}
	
	//주문한 데이터 주문내역에 출력
	public ArrayList<FinalOrderVO> getOrderlist(String email) {
		ArrayList<FinalOrderVO> list = new ArrayList<FinalOrderVO>();
		String sql = " select o_no,o_store,o_eat,hp,o_message,o_amt,o_price from subway_order where email=? ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				FinalOrderVO vo = new FinalOrderVO();
				vo.setO_NO(rs.getString(1));
				vo.setO_STORE(rs.getString(2));
				vo.setO_EAT(rs.getString(3));
				vo.setHP(rs.getString(4));
				vo.setO_MESSAGE(rs.getString(5));
				vo.setO_AMT(rs.getString(6));
				vo.setO_PRICE(rs.getString(7));
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	public MenuVO Order_Detail(String idx) {
		MenuVO vo = new MenuVO();
		String sql = "select idx,kor_name,eng_name,menu_summary,material1,material2,material3,material4,material5,price_15,price_30," +
					" weight,kcal,sugars,protein,saturated_fat,Natrium,image_path " + 
				" ,material1_image_path,material2_image_path,material3_image_path,material4_image_path,material5_image_path from sandwich_menu where idx = ?";
		getPreparedStatement(sql);
		
		try {
			
			pstmt.setString(1, idx);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo.setIdx(rs.getString(1));
				vo.setKor_name(rs.getString(2));
				vo.setEng_name(rs.getString(3));
				vo.setMenu_summary(rs.getString(4));
				vo.setMaterial1(rs.getString(5));
				vo.setMaterial2(rs.getString(6));
				vo.setMaterial3(rs.getString(7));
				vo.setMaterial4(rs.getString(8));
				vo.setMaterial5(rs.getString(9));
				vo.setPrice_15(rs.getInt(10));
				vo.setPrice_30(rs.getInt(11));
				vo.setWeight(rs.getString(12));
				vo.setKcal(rs.getString(13));
				vo.setSugars(rs.getString(14));
				vo.setProtein(rs.getString(15));
				vo.setSaturated_fat(rs.getString(16));
				vo.setNatrium(rs.getString(17));
				vo.setImage_path(rs.getString(18));
				vo.setMaterial1_image_path(rs.getString(19));
				vo.setMaterial2_image_path(rs.getString(20));
				vo.setMaterial3_image_path(rs.getString(21));
				vo.setMaterial4_image_path(rs.getString(22));
				vo.setMaterial5_image_path(rs.getString(23));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	//주문한 데이터의 메뉴데이터 테이블에 입력 
	public void insertOrder(SessionVO svo, OrderVO ovo) {
		String sql = "insert into subway_order_detail values(?,?,?,?,?,?,?,?,?,?,?,?)";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, svo.getEmail());
			pstmt.setString(2, ovo.getSub());
			pstmt.setString(3, ovo.getBread_choice());
			pstmt.setString(4, ovo.getCheese_choice());
			pstmt.setString(5, ovo.getVegetable_list());
			pstmt.setString(6, ovo.getSauce_choice());
			pstmt.setString(7, ovo.getSide_choice());
			pstmt.setString(8, ovo.getSingle_set());
			pstmt.setString(9, ovo.getCookie_choice());
			pstmt.setString(10, ovo.getBeverage_choice());
			pstmt.setString(11, ovo.getKor_name());
			pstmt.setString(12, ovo.getImage_path());
			
			int value = pstmt.executeUpdate();
			if(value != 1) {
				System.out.println("데이터 입력 에러");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public ArrayList<OrderVO> selectOrder(String email) {
		ArrayList<OrderVO> list = new ArrayList<OrderVO>();
		String sql = "select sub,bread,cheese,vegetable,sauce,side,single_set,cookie,beverage,kor_name,image_path from subway_order_detail where email = ?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, email);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				OrderVO vo = new OrderVO();
				vo.setSub(rs.getString(1));
				vo.setBread_choice(rs.getString(2));
				vo.setCheese_choice(rs.getString(3));
				vo.setVegetable_list(rs.getString(4));
				vo.setSauce_choice(rs.getString(5));
				vo.setSide_choice(rs.getString(6));
				vo.setSingle_set(rs.getString(7));
				vo.setCookie_choice(rs.getString(8));
				vo.setBeverage_choice(rs.getString(9));
				vo.setKor_name(rs.getString(10));
				vo.setImage_path(rs.getString(11));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	public ArrayList<OrderVO> selectSingleOrder(String email) {
		ArrayList<OrderVO> list = new ArrayList<OrderVO>();
		String sql = "select sub,bread,cheese,vegetable,sauce,side,single_set,kor_name,image_path from subway_order_detail where email = ?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, email);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				OrderVO vo = new OrderVO();
				vo.setSub(rs.getString(1));
				vo.setBread_choice(rs.getString(2));
				vo.setCheese_choice(rs.getString(3));
				vo.setVegetable_list(rs.getString(4));
				vo.setSauce_choice(rs.getString(5));
				vo.setSide_choice(rs.getString(6));
				vo.setSingle_set(rs.getString(7));
				vo.setKor_name(rs.getString(8));
				vo.setImage_path(rs.getString(9));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
		
	}
	
	
	
	//삭제처리
	public boolean getDeleteResult(String email) {
		boolean result = false;
		String sql = " delete from subway_order where email=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, email);
			
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
