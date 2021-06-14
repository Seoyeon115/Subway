package com.subway.dao;

import java.util.ArrayList;

import com.subway.vo.MenuVO;
import com.subway.vo.OrderVO;

public class MenuDAO extends DBconn{
	
	public ArrayList<OrderVO> selectBasket(String email) {
		ArrayList<OrderVO> volist = new ArrayList<OrderVO>();
		String sql = "select sub,bread,cheese,vegetable,sauce,side,single_set,cookie,beverage,kor_name,image_path,price from subway_basket where id = ?";
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
				vo.setPrice(rs.getInt(12));
				
				
				volist.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return volist;
	}
	
	
	public void insertBasket(OrderVO vo,String email) {
		String sql = "insert into subway_basket values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, email);
			pstmt.setString(2, vo.getSub());
			pstmt.setString(3, vo.getBread_choice());
			pstmt.setString(4, vo.getCheese_choice());
			pstmt.setString(5, vo.getVegetable_list());
			pstmt.setString(6, vo.getSauce_choice());
			pstmt.setString(7, vo.getSide_choice());
			pstmt.setString(8, vo.getSingle_set());
			pstmt.setString(9, vo.getCookie_choice());
			pstmt.setString(10, vo.getBeverage_choice());
			pstmt.setString(11, vo.getKor_name());
			pstmt.setString(12, vo.getImage_path());
			pstmt.setInt(13, vo.getPrice());
			
			int value = pstmt.executeUpdate();
			if(value != 1) {
				System.out.println("장바구니 데이터 입력 에러");
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
	}
	
	
	public ArrayList<MenuVO> getMenuList(){
		ArrayList<MenuVO> list = new ArrayList<MenuVO>();
		String sql = "select idx,kor_name,eng_name,menu_summary,material1,material2,material3,material4,material5," +
				" weight,kcal,sugars,protein,saturated_fat,Natrium,image_path,material1_image_path,material2_image_path," +
				" material3_image_path,material4_image_path,material5_image_path from sandwich_menu";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MenuVO vo = new MenuVO();
				vo.setIdx(rs.getString(1));
				vo.setKor_name(rs.getString(2));
				vo.setEng_name(rs.getString(3));
				vo.setMenu_summary(rs.getString(4));
				vo.setMaterial1(rs.getString(5));
				vo.setMaterial2(rs.getString(6));
				vo.setMaterial3(rs.getString(7));
				vo.setMaterial4(rs.getString(8));
				vo.setMaterial5(rs.getString(9));
				vo.setWeight(rs.getString(10));
				vo.setKcal(rs.getString(11));
				vo.setSugars(rs.getString(12));
				vo.setProtein(rs.getString(13));
				vo.setSaturated_fat(rs.getString(14));
				vo.setNatrium(rs.getString(15));
				vo.setImage_path(rs.getString(16));
				vo.setMaterial1_image_path(rs.getString(17));
				vo.setMaterial2_image_path(rs.getString(18));
				vo.setMaterial3_image_path(rs.getString(19));
				vo.setMaterial4_image_path(rs.getString(20));
				vo.setMaterial5_image_path(rs.getString(21));
				
				list.add(vo);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
	public MenuVO Menu_Detail(String idx) {
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
	
	
	//쿠키 메뉴 리스트
	public ArrayList<MenuVO> getCookieList() {
		ArrayList<MenuVO> list = new ArrayList<MenuVO>();
		String sql = " select idx, kor_name, eng_name, menu_summary, price, "
				   + " weight, kcal, sugars, protein, saturated_fat, Natrium, image_path from cookie_menu";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MenuVO vo = new MenuVO();
				vo.setIdx(rs.getString(1));
				vo.setKor_name(rs.getString(2));
				vo.setEng_name(rs.getString(3));
				vo.setMenu_summary(rs.getString(4));
				vo.setPrice(rs.getInt(5));
				vo.setWeight(rs.getString(6));
				vo.setKcal(rs.getString(7));
				vo.setSugars(rs.getString(8));
				vo.setProtein(rs.getString(9));
				vo.setSaturated_fat(rs.getString(10));
				vo.setNatrium(rs.getString(11));
				vo.setImage_path(rs.getString(12));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return list;
	}
	
	//음료 메뉴 리스트
	public ArrayList<MenuVO> getDrinkList(){
		ArrayList<MenuVO> list = new ArrayList<MenuVO>();
		String sql = "select idx, kor_name, eng_name, price, image_path from drink_menu";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MenuVO vo = new MenuVO();
				vo.setIdx(rs.getString(1));
				vo.setKor_name(rs.getString(2));
				vo.setEng_name(rs.getString(3));
				vo.setPrice(rs.getInt(4));
				vo.setImage_path(rs.getString(5));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return list;
	}
	
	//쿠키 메뉴 디테일
	public MenuVO Cookie_Detail(String idx) {
		MenuVO vo = new MenuVO();
		String sql = " select idx, kor_name, eng_name, menu_summary, price, "
				   + " weight, kcal, sugars, protein, saturated_fat, Natrium, image_path from cookie_menu where idx=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, idx);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				vo.setIdx(rs.getString(1));
				vo.setKor_name(rs.getString(2));
				vo.setEng_name(rs.getString(3));
				vo.setMenu_summary(rs.getString(4));
				vo.setPrice(rs.getInt(5));
				vo.setWeight(rs.getString(6));
				vo.setKcal(rs.getString(7));
				vo.setSugars(rs.getString(8));
				vo.setProtein(rs.getString(9));
				vo.setSaturated_fat(rs.getString(10));
				vo.setNatrium(rs.getString(11));
				vo.setImage_path(rs.getString(12));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return vo;
	}
	//
	//음료 메뉴 디테일
	public MenuVO Drink_Detail(String idx) {
		MenuVO vo = new MenuVO();
		String sql = "select idx, kor_name, eng_name, price, image_path from drink_menu where idx=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, idx);
			rs = pstmt.executeQuery();

			while(rs.next()) {
				vo.setIdx(rs.getString(1));
				vo.setKor_name(rs.getString(2));
				vo.setEng_name(rs.getString(3));
				vo.setPrice(rs.getInt(4));
				vo.setImage_path(rs.getString(5));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return vo;
	}
	
	
	//all메뉴
	public MenuVO getAllMenuList(String idx) {
		MenuVO vo = new MenuVO();
		String sql ="select idx, kor_name, eng_name, price_15, price_30, price, image_path from all_menu where idx=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, idx);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo.setIdx(rs.getString(1));
				vo.setKor_name(rs.getString(2));
				vo.setEng_name(rs.getString(3));
				vo.setPrice_15(rs.getInt(4));
				vo.setPrice_30(rs.getInt(5));
				vo.setPrice(rs.getInt(6));
				vo.setImage_path(rs.getString(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
}
