package com.subway.dao;

import java.sql.*;
import java.util.*;

import com.subway.vo.*;

public class MemberDAO extends DBconn {
	
	//������ ������- ����� Ż�� ó���ϱ�
	public boolean member_delete(String email) {
		boolean result = false;
		String sql = "delete from subway_member where email=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, email);
			int value = pstmt.executeUpdate();
			if(value !=0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();		}
		close();
		return result;
	}
	
	
	//������������ - ����� Ż�� ��ư Ȱ��ȭ
	public boolean delete_btn_able(String email) {
		boolean result = false;
		String sql = "update subway_member set choice=1 where email = ?";
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
	
	
	//��� ������ ���� ��������
	public int coupon1(String email) {
		int result = 0;
		String sql = "select coupon1 from subway_member where email=?";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				result = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	//��� ������ ���� ��������
	public int coupon2(String email) {
		int result = 0;
		String sql = "select coupon2 from subway_member where email=?";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				result = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	//��� ������ ���� ��������
	public int coupon3(String email) {
		int result = 0;
		String sql = "select coupon3 from subway_member where email=?";
		getPreparedStatement(sql);
		try {
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				result = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	
	//���� ���� ���� ����ϱ�
	public int couponCal(String email) {
		int value = 0;
		String sql = "select NVL(SUM(coupon1),0)+ NVL(SUM(coupon2),0) + NVL(sum(coupon3),0) from subway_member where email=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				value = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return value;
	}
	
	
	//����� ���� 0���� �ٲٱ�
	public void couponUse(String email,String coupon_price) {
		String sql = "";
		if(coupon_price.equals("2000")) {
			sql += "update subway_member set coupon1 = null where email=?";
		}else if(coupon_price.equals("3000")) {
			sql += "update subway_member set coupon2 = null where email=?";
		}else {
			sql += "update subway_member set coupon3 = null where email=?";
		}
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, email);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
	}
	
	
	
	//id �ߺ�üũ
	public int getIdCheck(String email) {
		int result = 0;
		String sql = " select count(*) from subway_member where email=? ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1,email);
			rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	//����ó��
	public boolean getDeleteResult(String email, String pass) {
		boolean result = false;
		String sql = "delete from subway_member where email=? and pass=? ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, email);
			pstmt.setString(2, pass);
			
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
	
	//������ ȸ������ ���� �����ֱ�
	public MemberVO getInfo(String pass) {
		MemberVO vo = new MemberVO();
		String sql = " select email,name,hp,addr from subway_member where pass=? ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, pass);
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
	
	//ȸ������ ����
	public boolean getUpdateResult(MemberVO vo) {
		boolean result = false;
		String sql = "update subway_member set name=?, addr=?, hp=? where email=? ";
		getPreparedStatement(sql);
		
		try {
			
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getAddr());
			pstmt.setString(3, vo.getHp());
			pstmt.setString(4, vo.getEmail());
			
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
	
	//��й�ȣ ����
	public boolean ChangePass(String ncpass, String email) {
		boolean result = false;
		String sql = " update subway_member set pass = ? where email = ?  ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, ncpass);
			pstmt.setString(2, email);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return result;
	}
	
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
	
	//ȸ������ �����ֱ�
	public MemberVO getInfo(String email, String pass) {
		MemberVO vo = new MemberVO();
		String sql = " select email,name,hp,addr from subway_member where email=? and pass=? ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, email);
			pstmt.setString(2, pass);
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
		String sql = "insert into subway_member values(?,?,?,?,?,?,?,?,?,?,sysdate,0)";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getEmail());
			pstmt.setString(2, vo.getPass());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getHp());
			pstmt.setString(5, vo.getPost());
			pstmt.setString(6, vo.getAddr());
			pstmt.setString(7, vo.getDaddr());
			pstmt.setString(8, "1");
			pstmt.setString(9, "1");
			pstmt.setString(10, "1");
			
			int val = pstmt.executeUpdate();
			
			if(val != 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	//�α��� ó�� -- count �Լ��� ���
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
	
	public SessionVO getLoginResult(MemberVO vo) {
		SessionVO svo = new SessionVO(); 
		String sql = " select count(*) result, name from subway_member where email=? and pass=? group by name ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getEmail());
			pstmt.setString(2, vo.getPass());
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				svo.setResult(rs.getInt(1));
				svo.setName(rs.getString(2));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		
		return svo;
		
}
	//ȸ������ üũ -- count �Լ��� ���
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
	
	//ȸ�� �� ����
		public MemberVO getContent(String email) {
			MemberVO vo = new MemberVO();
			String sql = "select email, name, hp, addr, post, to_char(mdate, 'yyyy-mm-dd') mdate from subway_member where email=?";
			getPreparedStatement(sql);
			
			try {
				pstmt.setString(1, email);
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					vo.setEmail(rs.getString(1));
					vo.setName(rs.getString(2));
					vo.setHp(rs.getString(3));
					vo.setAddr(rs.getString(4));
					vo.setPost(rs.getString(5));
					vo.setMdate(rs.getString(6));
					
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			close();
			return vo;
		}
	
	/* ��ü ī��Ʈ ��������*/
	//execTotalCount()
	public int execTotalCount(){
		int count = 0;
		String sql = " select count(*) from subway_member ";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			if(rs.next()) count = rs.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}
	
	//���� ��������
	public MemberVO getCoupon(String email) {
		MemberVO vo = new MemberVO();
		String sql = "select coupon1, coupon2, coupon3 from subway_member where email=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setCoupon1(rs.getString(1));
				vo.setCoupon2(rs.getString(2));
				vo.setCoupon3(rs.getString(3));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return vo;
	}
	
	//���� ī��Ʈ
	public boolean couponCount(String email) {
		boolean result = false;
		String sql = " select count(case when coupon1='1' then 1 end) coupon1,"
						  + " count(case when coupon2='1' then 1 end) coupon2,"
						  + " count(case when coupon3='1' then 1 end) coupon3 "
						  + " from subway_member where email=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, email);
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
	
	//����1 �����
	public boolean coupon1Result(String email) {
		boolean result = false;
		String sql = "update subway_member set coupon1=null where email=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, email);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return result;
	}
	//����2 �����
	public boolean coupon2Result(String email) {
		boolean result = false;
		String sql = "update subway_member set coupon2=null where email=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, email);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return result;
	}
	//����3 �����
	public boolean coupon3Result(String email) {
		boolean result = false;
		String sql = "update subway_member set coupon3=null where email=?";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, email);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		close();
		return result;
	}
	
	//ȸ�� ��ü ����Ʈ
		public ArrayList<MemberVO> getList(){
			ArrayList<MemberVO> list = new ArrayList<MemberVO>();
			String sql = " select rownum rno, email, name, hp, addr, to_char(mdate, 'yyyy-mm-dd') mdate, choice " 
					   + " from (select email, name, hp, addr, mdate, choice from subway_member " 
					   + " 		 order by mdate desc)";
			getPreparedStatement(sql);
			
			try {
				rs = pstmt.executeQuery();
				while(rs.next()) {
					MemberVO vo = new MemberVO();
					vo.setRno(rs.getInt(1));
					vo.setEmail(rs.getString(2));
					vo.setName(rs.getString(3));
					vo.setHp(rs.getString(4));
					vo.setAddr(rs.getString(5));
					vo.setMdate(rs.getString(6));
					vo.setChoice(rs.getInt(7));
					
					list.add(vo);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			close();
			return list;
		}
		
		//Select --> ��ü ����Ʈ : ����¡ ó��
			public ArrayList<MemberVO> getList(int start, int end){
				ArrayList<MemberVO> list = new ArrayList<MemberVO>();
				String sql = " select rno, email, name, hp, addr, mdate, choice "
						   + " from(select rownum rno, email, name, hp, addr, to_char(mdate, 'yyyy-mm-dd') mdate, choice " 
						   + " from (select email, name, hp, addr, mdate, choice from subway_member " 
						   + " 		 order by mdate desc))"
						   + " where rno between ? and ?";
				getPreparedStatement(sql);
				
				try {
					pstmt.setInt(1, start);
					pstmt.setInt(2, end);
					
					rs = pstmt.executeQuery();
					while(rs.next()){
						MemberVO vo = new MemberVO();
						vo.setRno(rs.getInt(1));
						vo.setEmail(rs.getString(2));
						vo.setName(rs.getString(3));
						vo.setHp(rs.getString(4));
						vo.setAddr(rs.getString(5));
						vo.setMdate(rs.getString(6));
						vo.setChoice(rs.getInt(7));
						
						list.add(vo);
					}
				} catch (Exception e) {
					e.printStackTrace();
				}
				close();
				
				return list;
			}
	
	
}