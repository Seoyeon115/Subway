package com.subway.dao;


import java.util.ArrayList;

import com.subway.vo.BoardVO;

public class BoardDAO extends DBconn {
	
	/* ��ü ī��Ʈ �������� */
	//execTotalCount()
	public int execTotalCount(){
		int count = 0;
		String sql = " select count(*) from subway_board ";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			if(rs.next()) count = rs.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}
	
	//Delete ---> ������ ����� ���� ������ ���� ���
	public String getBsfile(String bid) {
		String Bsfile = null;
		
		String sql = " SELECT BSFILE FROM SUBWAY_BOARD WHERE BID = ? ";
		getPreparedStatement(sql);
				
		try {
			pstmt.setString(1, bid);
			rs = pstmt.executeQuery();
			
			if(rs.next()) Bsfile = rs.getString(1);

		} catch (Exception e) {
			// TODO: handle exception
		}
		return Bsfile;
	}
	
	//Delete ---> �Խñ� ����
	public boolean getDeleteResult(String bid) {
		boolean result = false;
		String sql = " DELETE FROM SUBWAY_BOARD WHERE BID=? ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, bid);
			int value = pstmt.executeUpdate();
			
			if(value != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		close();
		return result;
	}
	
	//Update ---> �Խ��� ���� 
	public boolean getUpdateResultNofile(BoardVO vo) {
		boolean result = false;
		String sql = " UPDATE SUBWAY_BOARD SET BTITLE=?, BCONTENT=? WHERE BID=? ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			pstmt.setString(3, vo.getBid());
			
			int value = pstmt.executeUpdate();
			if(value != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		close();
		return result;
	}
	
	
	//Update ---> �Խ��� ���� (���ο� ���� ����)
	public boolean getUpdateResult(BoardVO vo) {
		boolean result = false;
		String sql = " UPDATE SUBWAY_BOARD SET BTITLE=?, BCONTENT=?, BFILE=?, BSFILE=? WHERE BID=? ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			pstmt.setString(3, vo.getBfile());
			pstmt.setString(4, vo.getBsfile());
			pstmt.setString(5, vo.getBid());
			
			int value = pstmt.executeUpdate();
			if(value != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		close();
		return result;
	}
	
	
	//select ---> �� ����
	public BoardVO getContent(String bid) {
		BoardVO vo = new BoardVO();
		String sql = " SELECT BID, BTITLE, BCONTENT, TO_CHAR(BDATE, 'YYYY-MM-DD'), BFILE, BSFILE FROM SUBWAY_BOARD WHERE BID = ? ";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, bid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setBtitle(rs.getString(2));
				vo.setBcontent(rs.getString(3));
				vo.setBdate(rs.getString(4));
				vo.setBfile(rs.getString(5));
				vo.setBsfile(rs.getString(6));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	
	//select ---> ��ü ����Ʈ
	public ArrayList<BoardVO> getList() {
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		String sql = " SELECT ROWNUM RNO, BID, BTITLE, TO_CHAR(BDATE, 'YYYY-MM-DD') " + 
				" FROM " + 
				" (SELECT BID, BTITLE, BDATE FROM SUBWAY_BOARD " + 
				" ORDER BY BDATE DESC) ";
		getPreparedStatement(sql);
		
		try {
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setRno(rs.getInt(1));
				vo.setBid(rs.getString(2));
				vo.setBtitle(rs.getString(3));
				vo.setBdate(rs.getString(4));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		close();
		return list;
	}
	
	
	
	//insert ---> �Խ��� �۾���
	public boolean getInsertResult(BoardVO vo) {
		boolean result = false;
		String sql = "insert into subway_board values('b_'||sequ_subway_board.nextval, ?, ?, ?, ?, sysdate)";
		getPreparedStatement(sql);
		
		try {
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			pstmt.setString(3, vo.getBfile());
			pstmt.setString(4, vo.getBsfile());
			
			int value = pstmt.executeUpdate();
			if(value != 0) result = true;
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		close();
		return result;
	}
	
		
		//select ---> ���� ����¡ ó��
		public ArrayList<BoardVO> getList1() {
			ArrayList<BoardVO> list1 = new ArrayList<BoardVO>();
			String sql = " SELECT RNO, BID, BTITLE, BDATE " + 
					" FROM (SELECT ROWNUM RNO, BID, BTITLE, TO_CHAR(BDATE, 'YYYY-MM-DD') BDATE " + 
					"		FROM (SELECT BID, BTITLE, BDATE FROM SUBWAY_BOARD ORDER BY BDATE DESC)) " + 
					" WHERE RNO BETWEEN 1 AND 6 ";
			getPreparedStatement(sql);
			
			try {
				rs = pstmt.executeQuery();
				while(rs.next()) {
					BoardVO vo = new BoardVO();
					vo.setRno(rs.getInt(1));
					vo.setBid(rs.getString(2));
					vo.setBtitle(rs.getString(3));
					vo.setBdate(rs.getString(4));
					
					list1.add(vo);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			return list1;
		}
		
		//select ---> ����¡ ó��
		public ArrayList<BoardVO> getList(int start, int end) {
			ArrayList<BoardVO> list = new ArrayList<BoardVO>();
			String sql = " SELECT RNO, BID, BTITLE, BDATE " + 
					" FROM (SELECT ROWNUM RNO, BID, BTITLE, TO_CHAR(BDATE, 'YYYY-MM-DD') BDATE " + 
					"		FROM (SELECT BID, BTITLE, BDATE FROM SUBWAY_BOARD ORDER BY BDATE DESC)) " + 
					" WHERE RNO BETWEEN ? AND ? ";
			getPreparedStatement(sql);
			
			try {
				pstmt.setInt(1, start);
				pstmt.setInt(2, end);
				
				rs = pstmt.executeQuery();
				while(rs.next()) {
					BoardVO vo = new BoardVO();
					vo.setRno(rs.getInt(1));
					vo.setBid(rs.getString(2));
					vo.setBtitle(rs.getString(3));
					vo.setBdate(rs.getString(4));
					
					list.add(vo);
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			close();
			return list;
		}
		
}
