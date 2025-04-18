<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.itask.app.dto.UserDTO" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="./../../../../assets/css/article/qual/guide/netManager.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">
  <script src="./../../../../assets/js/article/qual/guide/netManager.js"></script>
</head>

<body>
  <!-- 헤더 영역 -->
	<% UserDTO userInfo = (UserDTO)session.getAttribute("userDTO"); %>
	<% if(userInfo != null){ %>
	  <jsp:include page="./../../../basic/userheader.jsp"/>
	  
	<% }else{ %>
		<jsp:include page="./../../../basic/header.jsp"/>
	  
	<%} %>

  <!-- 메인 영역 -->
  <main class="itAskBox">
    <!-- 원서 접수 마감 디데이가 담길 박스 -->
    <div class="lch-netManager-day">
      <!-- 너비 1200px 안에 들어올 수 있도록 지정하기 위한 박스 -->
      <div class="lch-netManager-day-show">
        <span class="lch-netManager-day-title">
          네트워크관리사 원서 접수 시작일까지 D -
          <span class="lch-netManager-dday">-1</span>
        </span>
        <a class="lch-netManager-day-link" target="_blank" href="https://www.icqa.or.kr/cn/login">
          지금 신청하러 가기!!
        </a>
      </div>
    </div>
    <!-- 메인 안에 요소들이 담길 컨테이너 박스 -->
    <article class="lch-netManager-elements">
      <!-- 자격증  -->
      <span class="lch-netManager-title">자격증</span>
      <!-- 자격증 상위 카테고리 -->
      <div class="lch-netManager-category">
        <button class="lch-netManager-category-btn lch-netManager-select"
          onclick="location.href='./netManager.html'">시험안내</button>
        <button class="lch-netManager-category-btn" onclick="location.href='./../ask.jsp'">질문</button>
        <button class="lch-netManager-category-btn" onclick="location.href='./../tip.jsp'">꿀팁</button>
      </div>
      <!-- 자격증 태그 버튼 -->
      <div class="lch-netManager-tag">
        <button class="lch-netManager-tag-btn" onclick="location.href='./infoSec.jsp'">정보보안</button>
        <button class="lch-netManager-tag-btn" onclick="location.href='./infoPro.jsp'">정보처리</button>
        <button class="lch-netManager-tag-btn lch-netManager-select"
          onclick="location.href='./netManager.jsp'">네트워크관리사</button>
        <button class="lch-netManager-tag-btn" onclick="location.href='./linuxMaster.jsp'">리눅스마스터</button>
        <button class="lch-netManager-tag-btn" onclick="location.href='./sqld.jsp'">SQLD</button>
      </div>
      <!-- 정보처리기사 일정 박스 -->
      <div class="lch-netManager-content">
        <span class="lch-netManager-content-title">2025년 네트워크관리사 1급 일정</span>
        <!-- 일정 테이블 -->
        <div class="lch-netManager-table">
          <!-- 테이블 제목 -->
          <ul class="lch-netManager-table-title">
            <li class="lch-netManager-table-element1">회차</li>
            <li class="lch-netManager-table-element1">원서접수 기간</li>
            <li class="lch-netManager-table-element1">수검일자</li>
            <li class="lch-netManager-table-element1">필기 합격자 발표</li>
            <li class="lch-netManager-table-element1">실기 접수 기간</li>
            <li class="lch-netManager-table-element1">수검일자</li>
            <li class="lch-netManager-table-element1">실기 합격자 발표</li>
          </ul>
          <!-- 1회차 -->
          <ul class="lch-netManager-table-content1">
            <li class="lch-netManager-table-element2">1회차</li>
            <li class="lch-netManager-table-element2">25.03.18~25.03.21</li>
            <li class="lch-netManager-table-element2">25.04.20</li>
            <li class="lch-netManager-table-element2">25.04.22</li>
            <li class="lch-netManager-table-element2">25.04.22~25.04.25</li>
            <li class="lch-netManager-table-element2">25.05.18</li>
            <li class="lch-netManager-table-element2">25.05.27</li>
          </ul>
          <!-- 2회차 -->
          <ul class="lch-netManager-table-content2">
            <li class="lch-netManager-table-element3">2회차</li>
            <li class="lch-netManager-table-element3">25.09.16~25.09.19</li>
            <li class="lch-netManager-table-element3">25.10.26</li>
            <li class="lch-netManager-table-element3">25.10.28</li>
            <li class="lch-netManager-table-element3">25.10.28~25.10.31</li>
            <li class="lch-netManager-table-element3">25.12.07</li>
            <li class="lch-netManager-table-element3">25.12.16</li>
          </ul>
          <!-- 응시자격 박스 -->
          <div class="lch-netManager-application">
            <!-- 응시자격 대제목 -->
            <div class="lch-netManager-application-title">응시 자격</div>
            <!-- 응시자격의 학력 및 경력 요건들 -->
            <div class="lch-netManager-application-sub-title1">1. 필기 응시 자격</div>
            <ul class="lch-netManager-application-content1">
              <li class="lch-netManager-application-list1">당협회 시행 해당종목 2급자격 소지자</li>
              <li class="lch-netManager-application-list2">전기, 전자, 통신, 정보처리 직무분야 국가기술 자격취득자 중 기술사, 기사, 산업기사 자격증 소지자</li>
              <li class="lch-netManager-application-list3">전기, 전자, 통신, 정보처리 직무분야 국가기술 자격취득자 중 기능사 자격 취득한 후 동일직무 분야에서
                2년이상 실무에 종사한 자</li>
              <li class="lch-netManager-application-list4">IT관련 사업장에서 5년이상 종사한다</li>
            </ul>

            <div class="lch-netManager-application-sub-title1">2. 실기 응시 자격</div>
            <ul class="lch-netManager-application-content1">
              <li class="lch-netManager-application-list1">해당등급 필기 합격자로서 합격일로부터 2년 이내의 응시자</li>
            </ul>
          </div>
          <!-- 시험 구성 박스-->
          <div class="lch-netManager-test">
            <!-- 시험 구성 대제목 -->
            <div class="lch-netManager-test-title">시험 구성</div>
            <!-- 필기시험 -->
            <div class="lch-netManager-write-sub-title1">1. 필기시험</div>
            <ul class="lch-netManager-write-content1">
              <li class="lch-netManager-write-list1">과목 : 네트워크일반, TCP/IP, NOS, 네트워크 운용 기기, 정보보호개론</li>
              <li class="lch-netManager-write-list2">출제유형(시험시간) : 택일형(60분)</li>
              <li class="lch-netManager-write-list3">합격기준 : 100점을 만점으로 60점 이상</li>
            </ul>
            <!-- 실기시험 -->
            <div class="lch-netManager-skill-sub-title2">2. 실기시험</div>
            <ul class="lch-netManager-skill-content2">
              <li class="lch-netManager-skill-list1">과목 : 네트워크 설계/구축, TCP/IP, NOS, 네트워크 운용기기</li>
              <li class="lch-netManager-skill-list2">출제유형(시험시간) : 작업, 서술, 선택형(100분)</li>
              <li class="lch-netManager-skill-list3">합격기준 : 100점을 만점으로 60점 이상</li>
            </ul>
          </div>
          <!-- ------------네트워크관리사 2급------------- -->
          <div class="lch-netManager-content">
            <span class="lch-netManager-content-title">2025년 네트워크관리사 2급 일정</span>
            <!-- 일정 테이블 -->
            <div class="lch-netManager-table">
              <!-- 테이블 제목 -->
              <ul class="lch-netManager-table-title">
                <li class="lch-netManager-table-element1">회차</li>
                <li class="lch-netManager-table-element1">원서접수 기간</li>
                <li class="lch-netManager-table-element1">수검일자</li>
                <li class="lch-netManager-table-element1">필기 합격자 발표</li>
                <li class="lch-netManager-table-element1">실기 접수 기간</li>
                <li class="lch-netManager-table-element1">수검일자</li>
                <li class="lch-netManager-table-element1">실기 합격자 발표</li>
              </ul>
              <!-- 1회차 -->
              <ul class="lch-netManager-table-content1">
                <li class="lch-netManager-table-element2">1회차</li>
                <li class="lch-netManager-table-element2">25.01.21~25.01.24</li>
                <li class="lch-netManager-table-element2">25.02.23</li>
                <li class="lch-netManager-table-element2">25.02.25</li>
                <li class="lch-netManager-table-element2">25.02.25~25.02.28</li>
                <li class="lch-netManager-table-element2">25.03.30</li>
                <li class="lch-netManager-table-element2">25.04.08</li>
              </ul>
              <!-- 2회차 -->
              <ul class="lch-netManager-table-content2">
                <li class="lch-netManager-table-element3">2회차</li>
                <li class="lch-netManager-table-element3">25.04.08~25.04.11</li>
                <li class="lch-netManager-table-element3">25.05.25</li>
                <li class="lch-netManager-table-element3">25.05.27</li>
                <li class="lch-netManager-table-element3">25.05.27~25.05.30</li>
                <li class="lch-netManager-table-element3">25.06.22</li>
                <li class="lch-netManager-table-element3">25.07.01</li>
              </ul>
              <!-- 3회차 -->
              <ul class="lch-netManager-table-content1">
                <li class="lch-netManager-table-element2">3회차</li>
                <li class="lch-netManager-table-element2">25.07.22~25.07.25</li>
                <li class="lch-netManager-table-element2">25.08.24</li>
                <li class="lch-netManager-table-element2">25.08.26</li>
                <li class="lch-netManager-table-element2">25.08.26~25.08.29</li>
                <li class="lch-netManager-table-element2">25.09.21</li>
                <li class="lch-netManager-table-element2">25.09.30</li>
              </ul>
              <!-- 4회차 -->
              <ul class="lch-netManager-table-content2">
                <li class="lch-netManager-table-element3">4회차</li>
                <li class="lch-netManager-table-element3">25.09.29~25.10.02</li>
                <li class="lch-netManager-table-element3">25.11.02</li>
                <li class="lch-netManager-table-element3">25.11.04</li>
                <li class="lch-netManager-table-element3">25.11.04~25.11.07</li>
                <li class="lch-netManager-table-element3">25.11.30</li>
                <li class="lch-netManager-table-element3">25.12.09</li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <!-- 응시자격 박스 -->
      <div class="lch-netManager-application">
        <!-- 응시자격 대제목 -->
        <div class="lch-netManager-application-title">응시 자격</div>
        <!-- 응시자격의 학력 및 경력 요건들 -->
        <div class="lch-netManager-application-sub-title1">1. 필기시험</div>
        <ul class="lch-netManager-application-content1">
          <li class="lch-netManager-application-list1">제한없음(연령, 나이...)</li>
        </ul>

        <div class="lch-netManager-application-sub-title1">2. 실기 응시 자격</div>
        <ul class="lch-netManager-application-content1">
          <li class="lch-netManager-application-list1">해당등급 필기 합격자로서 합격일로부터 2년 이내의 응시자</li>
        </ul>
      </div>
      <!-- 시험 구성 박스-->
      <div class="lch-netManager-test">
        <!-- 시험 구성 대제목 -->
        <div class="lch-netManager-test-title">시험 구성</div>
        <!-- 필기시험 -->
        <div class="lch-netManager-write-sub-title1">1. 필기시험</div>
        <ul class="lch-netManager-write-content1">
          <li class="lch-netManager-write-list1">과목 : 네트워크일반, TCP/IP, NOS, 네트워크 운용 기기</li>
          <li class="lch-netManager-write-list2">출제유형(시험시간) : 택일형(50분)</li>
          <li class="lch-netManager-write-list3">합격기준 : 100점을 만점으로 60점 이상</li>
        </ul>
        <!-- 실기시험 -->
        <div class="lch-netManager-skill-sub-title2">2. 실기시험</div>
        <ul class="lch-netManager-skill-content2">
          <li class="lch-netManager-skill-list1">과목 : LAN 전송매체, 네트워크 설계/구축, TCP/IP, NOS, 네트워크 운용 기기</li>
          <li class="lch-netManager-skill-list2">출제유형(시험시간) : 작업, 서술, 선택형(80분)</li>
          <li class="lch-netManager-skill-list3">합격기준 : 100점을 만점으로 60점 이상</li>
        </ul>
      </div>
    </article>
  </main>
  <jsp:include page="../../../basic/footer.jsp" />
</body>

</html>