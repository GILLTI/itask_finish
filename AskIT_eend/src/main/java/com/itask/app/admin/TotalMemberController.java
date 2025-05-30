package com.itask.app.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itask.app.Execute;
import com.itask.app.Result;
import com.itask.app.admin.dao.AdminDAO;
import com.itask.app.dto.UserAdminDTO;

public class TotalMemberController implements Execute {

	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("TotalMemberController 실행됨");
		AdminDAO adminDAO = new AdminDAO();
		Result result = new Result();

		String temp = request.getParameter("page");
		int page = (temp == null) ? 1 : Integer.valueOf(temp); // 페이지번호 기본값 : 1
		int rowCount = 10; // 한 페이지당 게시글 수
		int pageCount = 5; // 페이지 버튼 수

		// 페이징 처리
		int startRow = (page - 1) * rowCount + 1; // 시작행( 1, 11, 21)
		int endRow = startRow + rowCount - 1; // 끝 행(10, 20, 30)

		Map<String, Integer> pageMap = new HashMap<>();
		pageMap.put("startRow", startRow);
		pageMap.put("endRow", endRow);
		
		// 전체 회원 목록 가져오기
		List<UserAdminDTO> users = adminDAO.TotalMember(pageMap);
		for (UserAdminDTO user : users) {
			System.out.println("회원 데이터: " + user);
		}
		// 회원 목록을 request 객체에 담아 JSP로 전달
		request.setAttribute("users", users);

		int total = adminDAO.getTotal();
		int realEndPage = (int) Math.ceil(total / (double) rowCount); // 실제 마지막 페이지 (전체게시글 기준으로 계산)
		int endPage = (int) (Math.ceil(page / (double) pageCount) * pageCount); // 현제 페이지 그룹에서의 마지막 페이지
		int startPage = endPage - (pageCount - 1); // 현재 페이지 그룹에서의 첫 페이지

//	      startPage = Math.max(startPage, 0);
		endPage = Math.min(endPage, realEndPage); // endPage가 실제 존재하는 마지막 페이지(realEndPage)보다 크면 조정

		// prev, next 버튼 활성화 여부 확인
		boolean prev = startPage > 1;
		boolean next = endPage < realEndPage;

		request.setAttribute("page", page);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("prev", prev);
		request.setAttribute("next", next);

		System.out.println("====페이징 정보확인====");
		System.out.println("pageMap : " + pageMap);
		System.out.println("boardList : " + users);
		System.out.println(
				"startPage : " + startPage + ", endPage : " + endPage + ", prev : " + prev + ", next : " + next);
		System.out.println("===================");
		// 결과 페이지 설정
		System.out.println(result);
		result.setPath("/app/admin/basic/totalMember.jsp");
		result.setRedirect(false);
		return result;
	}

}
