package com.itask.app.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.itask.app.Result;
import com.itask.app.dto.UserDTO;

/**
 * Servlet implementation class UserFrontController
 */
//@WebServlet("/UserFrontController")
public class MypageFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MypageFrontController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("mypage 서블릿 실행");

		// 필요한 Path만 남기기
		String target = request.getRequestURI().substring(request.getContextPath().length());
		System.out.println(target + " 경로확인==============!!!");
		Result result = new Result();

		// +++++ 0122 오전
		// 마이페이지 메인에 접근시 해당 유저의 뱃지수, 게시글수, 댓글수 뽑아와야함
		switch (target) {
		case "/mypage/mypageMainOk.my":
			System.out.println("mypageMainOk 실행!");
			result = new mypageMainOkController().execute(request, response);
			break;
		case "/mypage/mentoCheck.my": // 자격/멘토 뱃지 추가하기 클릭시 -> 해당 jsp로 이동
			System.out.println("mentoCheck 실행!");
			result = new mentoCheckOkController().execute(request, response);
			break;
		case "/mypage/pwCheck.my": // 내정보 수정하기 클릭 -> 해당 jsp 이동
			System.out.println("pwCheck 실행!");
			result.setPath("/app/mypage/pwCheck.jsp");
			result.setRedirect(false); // forward 방식
			break;
		case "/mypage/pwCheckOk.my": // 내정보 수정하기 클릭 후 비밀번호 입력하고 클릭시
			System.out.println("pwCheckOk 실행!");
			result = new pwCheckOkController().execute(request, response); // 여기 구현해야함 처리할 컨트롤러생성
			break;
		case "/mypage/editInfoOk.my": // 닉네임 변경하기 클릭시 -> 업데이트
			System.out.println("editInfoOk 실행!");
			result = new editInfoOkController().execute(request, response); // 여기 구현해야함 처리할 컨트롤러 생성
			break;
		case "/mypage/editPw.my": // 비밀번호 수정하기 클릭시 -> 해당 jsp 이동
			System.out.println("editPw 실행!");
			result.setPath("/app/mypage/editPw.jsp");
			result.setRedirect(false);
			break;
		case "/mypage/editPwOk.my":
			System.out.println("editPwOk 실행!"); // 비밀번호 변경하기 클릭시 -> 업데이트
			result = new editPwOkController().execute(request, response);
			break;
		case "/mypage/editPhoneNum.my": // 핸드폰 번호 수정하기 클릭시 -> 업데이트
			System.out.println("editPhoneNum 실행!");
			result.setPath("/app/mypage/editPhoneNum.jsp");
			result.setRedirect(false);
			break;
		case "/mypage/sendSMS.me":
			System.out.println("핸드폰 인증 요청!");
			result = new editPhoneNumSMSController().execute(request, response);
			break;
		case "/mypage/verifyCode.my":
			System.out.println("인증번호 확인 요청!");
			result = new VerifyCodeController().execute(request, response);
			break;
		case "/mypage/editPhoneNumOk.my":
			System.out.println("editPhoneNumOk 실행!"); // 핸드폰번호 변경하기 클릭시 -> 업데이트
			result = new editPhoneNumOkController().execute(request, response);
			break;
		case "/mypage/userDeleteOk.my":
			System.out.println("userDeleteOk 실행!"); // 회원탈퇴하기 클릭시 -> 삭제
			result = new userDeleteOkController().execute(request, response);
			break;
		case "/mypage/checkNickOk.my":
			System.out.println("checkNickOk 실행!"); // 닉네임 중복검사
			result = new CheckNickDuplicateController().execute(request, response);
			break;
		case "/mypage/myTotalArticle.my":
			System.out.println("myTotalArticle 실행!");
			result = new myTotalArticleOkController().execute(request, response);
			break;
		case "/mypage/myTotalComment.my":
			System.out.println("myTotalComment 실행!");
			result = new myTotalCommentOkController().execute(request, response);
			break;
		case "/mypage/myProfileImgChange.my":
			System.out.println("myProfileImgChange 실행!");
			result = new myProfileImgChangOkController().execute(request, response);
			break;
		case "/mypage/myArticleDetail.my":
			System.out.println("myArticleDetailOk 실행!");
			result = new myArticleDetailOkController().execute(request, response);
			break;
//		fetch 사용시 주석해제
//		case "/mypage/myTotalArticleCate.my":
//			System.out.println("myTotalArticleCate 실행!");
//			result = new myTotalArticleCateOkController().execute(request, response);
//			break;
		case "/mypage/userPageSearch.my":
			System.out.println("userPageSearchOk 실행!");
			result = new userPageSearchOkController().execute(request, response);
			break;
		case "/mypage/userTotalArticle.my":
			System.out.println("userTotalArticleOk 실행!");
			result = new userTotalArticleOkController().execute(request, response);
			break;
		case "/mypage/userTotalComment.my":
			System.out.println("userTotalCommentOk 실행!");
			result = new userTotalCommentOkController().execute(request, response);
			break;

		}

		// 다음 동작 처리
		if (result != null) {
			if (result.isRedirect()) {
				response.sendRedirect(result.getPath());
				System.out.println(request.getAttribute("userId"));
			} else {
				request.getRequestDispatcher(result.getPath()).forward(request, response);
			}
		}

	}

}
