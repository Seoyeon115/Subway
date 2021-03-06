package com.subway.comms;
import java.util.HashMap;
import com.subway.dao.BoardDAO;
import com.subway.dao.MemberDAO;

public class Commons {
	public HashMap getPage(String rpage, Object obj, String name) {

		HashMap map = new HashMap<String, Integer>();

		// 페이징 처리 - startCount, endCount 구하기
		int startCount = 0;
		int endCount = 0;
		int pageSize = 8; // 한페이지당 게시물 수
		int reqPage = 1; // 요청페이지
		int pageCount = 1; // 전체 페이지 수
		int dbCount = 0; // DB에서 가져온 전체 행수

		if (name.equals("board")) {
			BoardDAO dao = (BoardDAO) obj;
			dbCount = dao.execTotalCount();
		} else if (name.equals("member")) {
			MemberDAO dao = (MemberDAO) obj;
			dbCount = dao.execTotalCount();
		}

		// 총 페이지 수 계산
		if (dbCount % pageSize == 0) {
			pageCount = dbCount / pageSize;
		} else {
			pageCount = dbCount / pageSize + 1;
		}

		// 요청 페이지 계산
		if (rpage != null) {
			reqPage = Integer.parseInt(rpage);
			startCount = (reqPage - 1) * pageSize + 1;
			endCount = reqPage * pageSize;
		} else {
			startCount = 1;
			endCount = 8;
		}

		map.put("start", startCount);
		map.put("end", endCount);
		map.put("dbCount", dbCount);
		map.put("pageSize", pageSize);
		map.put("rpage", reqPage);

		return map;
	}
}
