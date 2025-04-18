<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.itask.app.dto.UserDTO" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="./../../../../assets/css/article/qual/guide/sqld.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">
  <script src="./../../../../assets/js/article/qual/guide/sqld.js"></script>
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
    <div class="lch-sqld-day">
      <!-- 너비 1200px 안에 들어올 수 있도록 지정하기 위한 박스 -->
      <div class="lch-sqld-day-show">
        <span class="lch-sqld-day-title">
          SQLD 원서 접수 시작일까지 D -
          <span class="lch-sqld-dday">-1</span>
        </span>
        <a class="lch-sqld-day-link" target="_blank"
          href="https://www.dataq.or.kr/www/accounts/login.do">
          지금 신청하러 가기!!
        </a>
      </div>
    </div>
    <!-- 메인 안에 요소들이 담길 컨테이너 박스 -->
    <article class="lch-sqld-elements">
      <!-- 자격증  -->
      <span class="lch-sqld-title">자격증</span>
      <!-- 자격증 상위 카테고리 -->
      <div class="lch-sqld-category">
        <button class="lch-sqld-category-btn lch-sqld-select"
          onclick="location.href='./sqld.html'">시험안내</button>
        <button class="lch-sqld-category-btn" onclick="location.href='./../ask.jsp'">질문</button>
        <button class="lch-sqld-category-btn" onclick="location.href='./../tip.jsp'">꿀팁</button>
      </div>
      <!-- 자격증 태그 버튼 -->
      <div class="lch-sqld-tag">
        <button class="lch-sqld-tag-btn" onclick="location.href='./infoSec.jsp'">정보보안</button>
        <button class="lch-sqld-tag-btn" onclick="location.href='./infoPro.jsp'">정보처리</button>
        <button class="lch-sqld-tag-btn" onclick="location.href='./netManager.jsp'">네트워크관리사</button>
        <button class="lch-sqld-tag-btn" onclick="location.href='./linuxMaster.jsp'">리눅스마스터</button>
        <button class="lch-sqld-tag-btn lch-sqld-select" onclick="location.href='./sqld.jsp'">SQLD</button>
      </div>
      <!-- 정보처리기사 일정 박스 -->
      <div class="lch-sqld-content">
        <span class="lch-sqld-content-title">2025년 SQLD 일정</span>
        <!-- 일정 테이블 -->
        <div class="lch-sqld-table">
          <!-- 테이블 제목 -->
          <ul class="lch-sqld-table-title">
            <li class="lch-sqld-table-element1">회차</li>
            <li class="lch-sqld-table-element1">원서접수 기간</li>
            <li class="lch-sqld-table-element1">수험표발급일</li>
            <li class="lch-sqld-table-element1">시험일</li>
            <li class="lch-sqld-table-element1">사전점수공개/재검토 접수일</li>
            <li class="lch-sqld-table-element1">합격(예정)자 발표일</li>
          </ul>
          <!-- 1회차 -->
          <ul class="lch-sqld-table-content1">
            <li class="lch-sqld-table-element2">56회차</li>
            <li class="lch-sqld-table-element2">25.02.03~25.02.07</li>
            <li class="lch-sqld-table-element2">25.02.21</li>
            <li class="lch-sqld-table-element2">25.03.08</li>
            <li class="lch-sqld-table-element2">25.03.28~25.04.01</li>
            <li class="lch-sqld-table-element2">25.04.04</li>
          </ul>
          <!-- 2회차 -->
          <ul class="lch-sqld-table-content2">
            <li class="lch-sqld-table-element3">57회차</li>
            <li class="lch-sqld-table-element3">25.04.28~25.05.02</li>
            <li class="lch-sqld-table-element3">25.05.16</li>
            <li class="lch-sqld-table-element3">25.05.31</li>
            <li class="lch-sqld-table-element3">25.06.20~25.06.24</li>
            <li class="lch-sqld-table-element3">25.06.27</li>
          </ul>
          <!-- 3회차 -->
          <ul class="lch-sqld-table-content3">
            <li class="lch-sqld-table-element4">58회차</li>
            <li class="lch-sqld-table-element4">25.07.21~25.07.25</li>
            <li class="lch-sqld-table-element4">25.08.08</li>
            <li class="lch-sqld-table-element4">25.08.23</li>
            <li class="lch-sqld-table-element4">25.09.12~25.09.16</li>
            <li class="lch-sqld-table-element4">25.09.19</li>
          </ul>
          <!-- 4회차 -->
          <ul class="lch-sqld-table-content3">
            <li class="lch-sqld-table-element4">59회차</li>
            <li class="lch-sqld-table-element4">25.10.13~25.10.17</li>
            <li class="lch-sqld-table-element4">25.10.31</li>
            <li class="lch-sqld-table-element4">25.11.16</li>
            <li class="lch-sqld-table-element4">25.12.05~25.12.09</li>
            <li class="lch-sqld-table-element4">25.12.12</li>
          </ul>
        </div>
      </div>
      <!-- 응시자격 박스 -->
      <div class="lch-sqld-application">
        <!-- 응시자격 대제목 -->
        <div class="lch-sqld-application-title">응시 자격</div>
        <!-- 응시자격의 학력 및 경력 요건들 -->
        <div class="lch-sqld-application-sub-title1">1. 학력 및 경력 요건</div>
        <ul class="lch-sqld-application-content1">
          <li class="lch-sqld-application-list1">없음</li>
        </ul>
        <!-- 응시자격의 기타 자격 요건들 -->
        <div class="lch-sqld-other-sub-title2">2. 기타 자격 요건</div>
        <ul class="lch-sqld-other-content2">
          <li class="lch-sqld-other-list1">없음</li>
        </ul>
      </div>
      <!-- 시험 구성 박스-->
      <div class="lch-sqld-test">
        <!-- 시험 구성 대제목 -->
        <div class="lch-sqld-test-title">시험 구성</div>
        <!-- 필기시험 -->
        <div class="lch-sqld-write-sub-title1">1. 필기시험</div>
        <ul class="lch-sqld-write-content1">
          <li class="lch-sqld-write-list1">과목 : 데이터 모델링의 이해, SQL 기본 및 활용</li>
          <li class="lch-sqld-write-list2">출제유형(시험시간) : 데이터모델링의 이해(10문항), SQL 기본 및 활용(40문항)(90분)</li>
          <li class="lch-sqld-write-list3">합격기준 : 과목당 100점을 만점으로하여 매과목 40점 이상, 전과목평균 60점이상</li>
        </ul>
      </div>
    </article>
  </main>
  <jsp:include page="../../../basic/footer.jsp" />
</body>

</html>