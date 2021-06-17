package com.subway.comms;
import java.util.HashMap;
import com.subway.dao.BoardDAO;
import com.subway.dao.MemberDAO;

public class Commons {
	public HashMap getPage(String rpage, Object obj, String name) {

		HashMap map = new HashMap<String, Integer>();

		// ����¡ ó�� - startCount, endCount ���ϱ�
		int startCount = 0;
		int endCount = 0;
		int pageSize = 8; // ���������� �Խù� ��
		int reqPage = 1; // ��û������
		int pageCount = 1; // ��ü ������ ��
		int dbCount = 0; // DB���� ������ ��ü ���

		if (name.equals("board")) {
			BoardDAO dao = (BoardDAO) obj;
			dbCount = dao.execTotalCount();
		} else if (name.equals("member")) {
			MemberDAO dao = (MemberDAO) obj;
			dbCount = dao.execTotalCount();
		}

		// �� ������ �� ���
		if (dbCount % pageSize == 0) {
			pageCount = dbCount / pageSize;
		} else {
			pageCount = dbCount / pageSize + 1;
		}

		// ��û ������ ���
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

		System.out.println(map);
		return map;
	}
}
