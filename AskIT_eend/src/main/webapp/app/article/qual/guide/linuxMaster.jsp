<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.itask.app.dto.UserDTO" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="./../../../../assets/css/article/qual/guide/linuxMaster.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">
  <script src="./../../../../assets/js/article/qual/guide/linuxMaster.js"></script>
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
    <div class="lch-linuxMaster-day">
      <!-- 너비 1200px 안에 들어올 수 있도록 지정하기 위한 박스 -->
      <div class="lch-linuxMaster-day-show">
        <span class="lch-linuxMaster-day-title">
          리눅스마스터1급 원서 접수 시작일까지 D -
          <span class="lch-linuxMaster-dday">-1</span>
        </span>
        <a class="lch-linuxMaster-day-link" target="_blank"
          href="https://www.ihd.or.kr/memaccept1.do">
          지금 신청하러 가기!!
        </a>
      </div>
    </div>
    <!-- 메인 안에 요소들이 담길 컨테이너 박스 -->
    <article class="lch-linuxMaster-elements">
      <!-- 자격증  -->
      <span class="lch-linuxMaster-title">자격증</span>
      <!-- 자격증 상위 카테고리 -->
      <div class="lch-linuxMaster-category">
        <button class="lch-linuxMaster-category-btn lch-linuxMaster-select"
          onclick="location.href='./linuxMaster.html'">시험안내</button>
        <button class="lch-linuxMaster-category-btn" onclick="location.href='./../ask.jsp'">질문</button>
        <button class="lch-linuxMaster-category-btn" onclick="location.href='./../tip.jsp'">꿀팁</button>
      </div>
      <!-- 자격증 태그 버튼 -->
      <div class="lch-linuxMaster-tag">
        <button class="lch-linuxMaster-tag-btn" onclick="location.href='./infoSec.jsp'">정보보안</button>
        <button class="lch-linuxMaster-tag-btn" onclick="location.href='./infoPro.jsp'">정보처리</button>
        <button class="lch-linuxMaster-tag-btn" onclick="location.href='./netManager.jsp'">네트워크관리사</button>
        <button class="lch-linuxMaster-tag-btn lch-linuxMaster-select" onclick="location.href='./linuxMaster.jsp'">리눅스마스터</button>
        <button class="lch-linuxMaster-tag-btn" onclick="location.href='./sqld.jsp'">SQLD</button>
      </div>
      <!-- 리눅스마스터1급 일정 박스 -->
      <div class="lch-linuxMaster-content">
        <span class="lch-linuxMaster-content-title">2025년 리눅스마스터 1급 일정</span>
        <!-- 일정 테이블 -->
        <div class="lch-linuxMaster-table">
          <!-- 테이블 제목 -->
          <ul class="lch-linuxMaster-table-title">
            <li class="lch-linuxMaster-table-element1">회차</li>
            <li class="lch-linuxMaster-table-element1">원서접수 기간</li>
            <li class="lch-linuxMaster-table-element1">1차 시험일</li>
            <li class="lch-linuxMaster-table-element1">필기 합격자 발표</li>
            <li class="lch-linuxMaster-table-element1">2차 접수 기간</li>
            <li class="lch-linuxMaster-table-element1">2차 시험일</li>
            <li class="lch-linuxMaster-table-element1">2차 합격자 발표</li>
          </ul>
          <!-- 1회차 -->
          <ul class="lch-linuxMaster-table-content1">
            <li class="lch-linuxMaster-table-element2">2501회</li>
            <li class="lch-linuxMaster-table-element2">25.01.20~25.02.07</li>
            <li class="lch-linuxMaster-table-element2">25.03.08</li>
            <li class="lch-linuxMaster-table-element2">25.03.28</li>
            <li class="lch-linuxMaster-table-element2">25.03.31~25.04.11</li>
            <li class="lch-linuxMaster-table-element2">25.05.10</li>
            <li class="lch-linuxMaster-table-element2">25.05.30</li>
          </ul>
          <!-- 2회차 -->
          <ul class="lch-linuxMaster-table-content2">
            <li class="lch-linuxMaster-table-element3">2502회</li>
            <li class="lch-linuxMaster-table-element3">25.07.28~25.08.08</li>
            <li class="lch-linuxMaster-table-element3">25.09.13</li>
            <li class="lch-linuxMaster-table-element3">25.10.03</li>
            <li class="lch-linuxMaster-table-element3">25.10.06~25.10.17</li>
            <li class="lch-linuxMaster-table-element3">25.11.08</li>
            <li class="lch-linuxMaster-table-element3">25.11.28</li>
          </ul>
        </div>
      </div>
      <!-- 응시자격 박스 -->
      <div class="lch-linuxMaster-application">
        <!-- 응시자격 대제목 -->
        <div class="lch-linuxMaster-application-title">응시 자격</div>
        <!-- 응시자격의 기타 자격 요건들 -->
        <div class="lch-linuxMaster-other-sub-title2">1. 자격 요건</div>
        <ul class="lch-linuxMaster-other-content2">
          <li class="lch-linuxMaster-other-list1">1차 : 제한없음</li>
          <li class="lch-linuxMaster-other-list2">2차 : 1차 시험 합격자에 한해 성적공개일 기준으로 2년 이내 응시</li>
        </ul>
      </div>
      <!-- 시험 구성 박스-->
      <div class="lch-linuxMaster-test">
        <!-- 시험 구성 대제목 -->
        <div class="lch-linuxMaster-test-title">시험 구성</div>
        <!-- 필기시험 -->
        <div class="lch-linuxMaster-write-sub-title1">1. 필기시험</div>
        <ul class="lch-linuxMaster-write-content1">
          <li class="lch-linuxMaster-write-list1">과목 : 리눅스 실무의 이해, 리눅스 시스템관리, 네트워크 및 서비스의 활용</li>
          <li class="lch-linuxMaster-write-list2">출제유형(시험시간) : 객관식 4지선다형(100분)</li>
          <li class="lch-linuxMaster-write-list3">합격기준 : 과목당 100점을 만점으로하여 매과목 40점 이상, 전과목평균 60점이상</li>
        </ul>
        <!-- 실기시험 -->
        <div class="lch-linuxMaster-skill-sub-title2">2. 실기시험</div>
        <ul class="lch-linuxMaster-skill-content2">
          <li class="lch-linuxMaster-skill-list1">과목 : 리눅스 실무의 이해, 리눅스 시스템관리, 네트워크 및 서비스의 활용</li>
          <li class="lch-linuxMaster-skill-list2">출제유형(시험시간) : 필답(100분)</li>
          <li class="lch-linuxMaster-skill-list3">합격기준 : 100점을 만점으로 60점 이상</li>
        </ul>
      </div>
      <!-- --------------------리눅스마스터2급---------------------- -->
      <div class="lch-linuxMaster-content">
        <span class="lch-linuxMaster-content-title">2025년 리눅스마스터 2급 일정</span>
        <!-- 일정 테이블 -->
        <div class="lch-linuxMaster-table">
          <!-- 테이블 제목 -->
          <ul class="lch-linuxMaster-table-title">
            <li class="lch-linuxMaster-table-element1">회차</li>
            <li class="lch-linuxMaster-table-element1">원서접수 기간</li>
            <li class="lch-linuxMaster-table-element1">1차 시험 기간</li>
            <li class="lch-linuxMaster-table-element1">필기 합격자 발표</li>
            <li class="lch-linuxMaster-table-element1">2차 접수 기간</li>
            <li class="lch-linuxMaster-table-element1">2차 시험일</li>
            <li class="lch-linuxMaster-table-element1">2차 합격자 발표</li>
          </ul>
          <!-- 1회차 -->
          <ul class="lch-linuxMaster-table-content1">
            <li class="lch-linuxMaster-table-element2">2501회</li>
            <li class="lch-linuxMaster-table-element2">25.01.20~25.02.05</li>
            <li class="lch-linuxMaster-table-element2">25.01.21~25.02.06</li>
            <li class="lch-linuxMaster-table-element2">시험종료 즉시</li>
            <li class="lch-linuxMaster-table-element2">25.01.21~25.02.07</li>
            <li class="lch-linuxMaster-table-element2">25.03.08</li>
            <li class="lch-linuxMaster-table-element2">25.03.28</li>
          </ul>
          <!-- 2회차 -->
          <ul class="lch-linuxMaster-table-content2">
            <li class="lch-linuxMaster-table-element3">2502회</li>
            <li class="lch-linuxMaster-table-element3">25.04.28~25.05.08</li>
            <li class="lch-linuxMaster-table-element3">25.04.29~25.05.08</li>
            <li class="lch-linuxMaster-table-element3">시험종료 즉시</li>
            <li class="lch-linuxMaster-table-element3">25.04.29~25.05.09</li>
            <li class="lch-linuxMaster-table-element3">25.06.14</li>
            <li class="lch-linuxMaster-table-element3">25.07.04</li>
          </ul>
          <!-- 3회차 -->
          <ul class="lch-linuxMaster-table-content1">
            <li class="lch-linuxMaster-table-element2">2503회</li>
            <li class="lch-linuxMaster-table-element2">25.07.28~25.08.06</li>
            <li class="lch-linuxMaster-table-element2">25.07.29~25.08.07</li>
            <li class="lch-linuxMaster-table-element2">시험종료 즉시</li>
            <li class="lch-linuxMaster-table-element2">25.07.29~25.08.08</li>
            <li class="lch-linuxMaster-table-element2">25.09.13</li>
            <li class="lch-linuxMaster-table-element2">25.10.03</li>
          </ul>
          <!-- 4회차 -->
          <ul class="lch-linuxMaster-table-content2">
            <li class="lch-linuxMaster-table-element3">2504회</li>
            <li class="lch-linuxMaster-table-element3">25.10.27~25.11.05</li>
            <li class="lch-linuxMaster-table-element3">25.10.28~25.11.06</li>
            <li class="lch-linuxMaster-table-element3">시험종료 즉시</li>
            <li class="lch-linuxMaster-table-element3">25.10.28~25.11.07</li>
            <li class="lch-linuxMaster-table-element3">25.12.13</li>
            <li class="lch-linuxMaster-table-element3">26.01.02</li>
          </ul>
        </div>
      </div>
      <!-- 응시자격 박스 -->
      <div class="lch-linuxMaster-application">
        <!-- 응시자격 대제목 -->
        <div class="lch-linuxMaster-application-title">응시 자격</div>
        <!-- 응시자격의 기타 자격 요건들 -->
        <div class="lch-linuxMaster-other-sub-title2">1. 자격 요건</div>
        <ul class="lch-linuxMaster-other-content2">
          <li class="lch-linuxMaster-other-list1">1차 : 제한없음</li>
          <li class="lch-linuxMaster-other-list2">2차 : 1차 시험 합격자에 한해 성적공개일 기준으로 2년 이내 응시</li>
        </ul>
      </div>
      <!-- 시험 구성 박스-->
      <div class="lch-linuxMaster-test">
        <!-- 시험 구성 대제목 -->
        <div class="lch-linuxMaster-test-title">시험 구성</div>
        <!-- 필기시험 -->
        <div class="lch-linuxMaster-write-sub-title1">1. 온라인시험</div>
        <ul class="lch-linuxMaster-write-content1">
          <li class="lch-linuxMaster-write-list1">과목 : 리눅스 일반, 리눅스 운영 및 관리, 리눅스 활용</li>
          <li class="lch-linuxMaster-write-list2">출제유형(시험시간) : 객관식 4지선다형(60분)</li>
          <li class="lch-linuxMaster-write-list3">합격기준 : 과목당 100점을 만점으로하여 전과목평균 60점이상</li>
        </ul>
        <!-- 실기시험 -->
        <div class="lch-linuxMaster-skill-sub-title2">2. 필기시험</div>
        <ul class="lch-linuxMaster-skill-content2">
          <li class="lch-linuxMaster-skill-list1">과목 : 리눅스 일반, 리눅스 운영 및 관리, 리눅스 활용</li>
          <li class="lch-linuxMaster-skill-list2">출제유형(시험시간) : 사지선다(100분)</li>
          <li class="lch-linuxMaster-skill-list3">합격기준 : 100점을 만점으로 60점 이상(매과목 40점 이상)</li>
        </ul>
      </div>
    </article>
  </main>
  <jsp:include page="../../../basic/footer.jsp" />
</body>

</html>