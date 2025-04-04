<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.itask.app.dto.UserDTO" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="./../../../../assets/css/article/qual/guide/infoPro.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">
  <script src="./../../../../assets/js/article/qual/guide/infoPro.js"></script>
</head>

<body>
  <!-- 헤더 영역 -->
	<% UserDTO userInfo = (UserDTO)session.getAttribute("userDTO"); %>
	<% if(userInfo != null){ %>
	  <jsp:include page="./../../../basic/userheader.jsp"/>
	  
	<% }else{ %>
		<jsp:include page="./../../../basic/header.jsp"/>
	  
	<%} %>

  <!-- ------------------------------시험 일정은 1년에 한 번씩 수정됨 -> html 코드내 작성하고 여기서 수정하기-------------------------------------- -->
  <!-- 메인 영역 -->
  <main class="itAskBox">
    <!-- 원서 접수 마감 디데이가 담길 박스 -->
    <div class="lch-infoPro-day">
      <!-- 너비 1200px 안에 들어올 수 있도록 지정하기 위한 박스 -->
      <div class="lch-infoPro-day-show">
        <span class="lch-infoPro-day-title">
          정보처리 원서 접수 시작일까지 D -
          <span class="lch-infoPro-dday">-1</span>
        </span>
        <a class="lch-infoPro-day-link" target="_blank"
          href="https://www.q-net.or.kr/man001.do?id=man00103&gSite=Q&gId=&redir=rcv202.do%3Fid%3Drcv20210%26gId%3D%26gSite%3DQ">
          지금 신청하러 가기!!
        </a>
      </div>
    </div>
    <!-- 메인 안에 요소들이 담길 컨테이너 박스 -->
    <article class="lch-infoPro-elements">
      <!-- 자격증  -->
      <span class="lch-infoPro-title">자격증</span>
      <!-- 자격증 상위 카테고리 -->
      <div class="lch-infoPro-category">
        <button class="lch-infoPro-category-btn lch-infoPro-select"
          onclick="location.href='./infoPro.html'">시험안내</button>
        <button class="lch-infoPro-category-btn" onclick="location.href='./../ask.jsp'">질문</button>
        <button class="lch-infoPro-category-btn" onclick="location.href='./../tip.jsp'">꿀팁</button>
      </div>
      <!-- 자격증 태그 버튼 -->
      <div class="lch-infoPro-tag">
        <button class="lch-infoPro-tag-btn" onclick="location.href='./infoSec.jsp'">정보보안</button>
        <button class="lch-infoPro-tag-btn lch-infoPro-select" onclick="location.href='./infoPro.jsp'">정보처리</button>
        <button class="lch-infoPro-tag-btn" onclick="location.href='./netManager.jsp'">네트워크관리사</button>
        <button class="lch-infoPro-tag-btn" onclick="location.href='./linuxMaster.jsp'">리눅스마스터</button>
        <button class="lch-infoPro-tag-btn" onclick="location.href='./sqld.jsp'">SQLD</button>
      </div>
      <!-- 정보처리기사 일정 박스 -->
      <div class="lch-infoPro-content">
        <span class="lch-infoPro-content-title">2025년 정보처리기사 일정</span>
        <!-- 일정 테이블 -->
        <div class="lch-infoPro-table">
          <!-- 테이블 제목 -->
          <ul class="lch-infoPro-table-title">
            <li class="lch-infoPro-table-element1">회차</li>
            <li class="lch-infoPro-table-element1">원서접수 기간</li>
            <li class="lch-infoPro-table-element1">필기 시험 기간</li>
            <li class="lch-infoPro-table-element1">필기 합격자 발표</li>
            <li class="lch-infoPro-table-element1">실기 접수 기간</li>
            <li class="lch-infoPro-table-element1">실기 시험</li>
            <li class="lch-infoPro-table-element1">실기 합격자 발표</li>
          </ul>
          <!-- 1회차 -->
          <ul class="lch-infoPro-table-content1">
            <li class="lch-infoPro-table-element2">1회차</li>
            <li class="lch-infoPro-table-element2">25.01.13~25.01.16</li>
            <li class="lch-infoPro-table-element2">25.02.07~25.03.04</li>
            <li class="lch-infoPro-table-element2">25.03.12</li>
            <li class="lch-infoPro-table-element2">25.03.24~25.03.27</li>
            <li class="lch-infoPro-table-element2">25.04.20</li>
            <li class="lch-infoPro-table-element2">25.06.13</li>
          </ul>
          <!-- 2회차 -->
          <ul class="lch-infoPro-table-content2">
            <li class="lch-infoPro-table-element3">2회차</li>
            <li class="lch-infoPro-table-element3">25.04.14~25.04.17</li>
            <li class="lch-infoPro-table-element3">25.05.10~25.05.30</li>
            <li class="lch-infoPro-table-element3">25.06.11</li>
            <li class="lch-infoPro-table-element3">25.06.23~25.06.26</li>
            <li class="lch-infoPro-table-element3">25.07.19</li>
            <li class="lch-infoPro-table-element3">25.09.12</li>
          </ul>
          <!-- 3회차 -->
          <ul class="lch-infoPro-table-content3">
            <li class="lch-infoPro-table-element4">3회차</li>
            <li class="lch-infoPro-table-element4">25.07.21~25.07.24</li>
            <li class="lch-infoPro-table-element4">25.08.09~25.09.01</li>
            <li class="lch-infoPro-table-element4">25.09.10</li>
            <li class="lch-infoPro-table-element4">25.09.22~25.09.25</li>
            <li class="lch-infoPro-table-element4">25.11.08</li>
            <li class="lch-infoPro-table-element4">25.12.24</li>
          </ul>
        </div>
      </div>
      <!-- 응시자격 박스 -->
      <div class="lch-infoPro-application">
        <!-- 응시자격 대제목 -->
        <div class="lch-infoPro-application-title">응시 자격</div>
        <!-- 응시자격의 학력 및 경력 요건들 -->
        <div class="lch-infoPro-application-sub-title1">1. 학력 및 경력 요건</div>
        <ul class="lch-infoPro-application-content1">
          <li class="lch-infoPro-application-list1">4년재 대학 관련 학과 졸업자 또는 졸업 예정자</li>
          <li class="lch-infoPro-application-list2">3년재 전문대학 관련 학과 졸업자 + 동일 및 유사 직무 분야 실무 경력 1년 이상</li>
          <li class="lch-infoPro-application-list3">2년제 전문대학 관련학과 졸업자 + 동일 및 유사 직무 분야 실무 경력 2년 이상</li>
          <li class="lch-infoPro-application-list4">동일 및 유사 직무 분야 실무 경력 4년 이상</li>
        </ul>
        <!-- 응시자격의 기타 자격 요건들 -->
        <div class="lch-infoPro-other-sub-title2">2. 기타 자격 요건</div>
        <ul class="lch-infoPro-other-content2">
          <li class="lch-infoPro-other-list1">산업기사 등급 이상의 자격 취득자 + 동일 및 유사 직무 분야 실무 경력 1년 이상</li>
          <li class="lch-infoPro-other-list2">기능사 자격 취득자 + 동일 및 유사 직무 분야 실무 경력 3년 이상</li>
          <li class="lch-infoPro-other-list3">기능경기대회 입상자로서 관련 규정에 따라 응시 자격이 부여된자</li>

        </ul>
      </div>
      <!-- 시험 구성 박스-->
      <div class="lch-infoPro-test">
        <!-- 시험 구성 대제목 -->
        <div class="lch-infoPro-test-title">시험 구성</div>
        <!-- 필기시험 -->
        <div class="lch-infoPro-write-sub-title1">1. 필기시험</div>
        <ul class="lch-infoPro-write-content1">
          <li class="lch-infoPro-write-list1">과목 : 소프트웨어 설계, 소프트웨어 개발, 데이터베이스 구축, 프로그래밍 언어 활용, 정보시스템 구축 관리</li>
          <li class="lch-infoPro-write-list2">출제유형(시험시간) : 객관식 4지선다형 과목당 20문항(과목당 30분)</li>
          <li class="lch-infoPro-write-list3">합격기준 : 100점을 만점으로 과목당 40점 이상, 전 과목 평균 60점 이상</li>
        </ul>
        <!-- 실기시험 -->
        <div class="lch-infoPro-skill-sub-title2">2. 실기시험</div>
        <ul class="lch-infoPro-skill-content2">
          <li class="lch-infoPro-skill-list1">과목 : 요구사항 확인, 데이터입출력 구현, 통합 구현, 서버프로그램 구현, 인터페이스 구현, 화면 설계, 애플리케이션테스트 관리, SQL 응용, 소프트웨어 개발 보안 구축, 프로그래밍 언어 확용, 응용SW기초 기술 활용, 제품 소프트웨어 패키징</li>
          <li class="lch-infoPro-skill-list2">출제유형 (시험시간) : 필답형(2시간30분)</li>
          <li class="lch-infoPro-skill-list3">100점을 만점으로 하여 60점 이상</li>
        </ul>
      </div>
      <!-- -------------------------------------------------------정보처리산업기사---------------------------------------------------- -->
      <!-- 정보처리산업기사 일정 박스 -->
      <div class="lch-infoPro-content">
        <span class="lch-infoPro-content-title">2025년 정보처리산업기사 일정</span>
        <!-- 일정 테이블 -->
        <div class="lch-infoPro-table">
          <!-- 테이블 제목 -->
          <ul class="lch-infoPro-table-title">
            <li class="lch-infoPro-table-element1">회차</li>
            <li class="lch-infoPro-table-element1">원서접수 기간</li>
            <li class="lch-infoPro-table-element1">필기 시험 기간</li>
            <li class="lch-infoPro-table-element1">필기 합격자 발표</li>
            <li class="lch-infoPro-table-element1">실기 접수 기간</li>
            <li class="lch-infoPro-table-element1">실기 시험</li>
            <li class="lch-infoPro-table-element1">실기 합격자 발표</li>
          </ul>
          <!-- 1회차 -->
          <ul class="lch-infoPro-table-content1">
            <li class="lch-infoPro-table-element2">1회차</li>
            <li class="lch-infoPro-table-element2">25.01.13~25.01.16</li>
            <li class="lch-infoPro-table-element2">25.02.07~25.03.04</li>
            <li class="lch-infoPro-table-element2">25.03.12</li>
            <li class="lch-infoPro-table-element2">25.03.24~25.03.27</li>
            <li class="lch-infoPro-table-element2">25.04.20</li>
            <li class="lch-infoPro-table-element2">25.06.13</li>
          </ul>
          <!-- 2회차 -->
          <ul class="lch-infoPro-table-content2">
            <li class="lch-infoPro-table-element3">2회차</li>
            <li class="lch-infoPro-table-element3">25.04.14~25.04.17</li>
            <li class="lch-infoPro-table-element3">25.05.10~25.05.30</li>
            <li class="lch-infoPro-table-element3">25.06.11</li>
            <li class="lch-infoPro-table-element3">25.06.23~25.06.26</li>
            <li class="lch-infoPro-table-element3">25.07.19</li>
            <li class="lch-infoPro-table-element3">25.09.12</li>
          </ul>
          <!-- 3회차 -->
          <ul class="lch-infoPro-table-content3">
            <li class="lch-infoPro-table-element4">3회차</li>
            <li class="lch-infoPro-table-element4">25.07.21~25.07.24</li>
            <li class="lch-infoPro-table-element4">25.08.09~25.09.01</li>
            <li class="lch-infoPro-table-element4">25.09.10</li>
            <li class="lch-infoPro-table-element4">25.09.22~25.09.25</li>
            <li class="lch-infoPro-table-element4">25.11.08</li>
            <li class="lch-infoPro-table-element4">25.12.24</li>
          </ul>
        </div>
      </div>
      <!-- 응시자격 박스 -->
      <div class="lch-infoPro-application">
        <!-- 응시자격 대제목 -->
        <div class="lch-infoPro-application-title">응시 자격</div>
        <!-- 응시자격의 학력 및 경력 요건들 -->
        <div class="lch-infoPro-application-sub-title1">1. 학력 및 경력 요건</div>
        <ul class="lch-infoPro-application-content1">
          <li class="lch-infoPro-application-list1">4년제 대학 관련 학과 전 과정의 1/2 이상 수료자</li>
          <li class="lch-infoPro-application-list2">3년제 전문대학 관련 학과 졸업자(예정자)</li>
          <li class="lch-infoPro-application-list3">2년제 전문대학 관련학과 졸업자(예정자)</li>
          <li class="lch-infoPro-application-list4">동일 및 유사 직무 분야 실무 경력 2년 이상</li>
        </ul>
        <!-- 응시자격의 기타 자격 요건들 -->
        <div class="lch-infoPro-other-sub-title2">2. 기타 자격 요건</div>
        <ul class="lch-infoPro-other-content2">
          <li class="lch-infoPro-other-list1">동일분야 산업기사 등급 이상의 자격 취득자</li>
          <li class="lch-infoPro-other-list2">기능사 자격 취득자 + 동일 및 유사 직무 분야 실무 경력 1년 이상</li>
          <li class="lch-infoPro-other-list3">평생교육법에 의거한 관련학과 41학점 이상 보유자</li>
        </ul>
      </div>
      <!-- 시험 구성 박스-->
      <div class="lch-infoPro-test">
        <!-- 시험 구성 대제목 -->
        <div class="lch-infoPro-test-title">시험 구성</div>
        <!-- 필기시험 -->
        <div class="lch-infoPro-write-sub-title1">1. 필기시험</div>
        <ul class="lch-infoPro-write-content1">
          <li class="lch-infoPro-write-list1">과목 : 데이터베이스 활용, 프로그래밍 언어 활용, 정보시스템 기반 기술</li>
          <li class="lch-infoPro-write-list2">출제유형(시험시간) : 객관식 4지선다형 과목당 20문항(과목당 30분)</li>
          <li class="lch-infoPro-write-list3">합격기준 : 100점을 만점으로 과목당 40점 이상, 전 과목 평균 60점 이상</li>
        </ul>
        <!-- 실기시험 -->
        <div class="lch-infoPro-skill-sub-title2">2. 실기시험</div>
        <ul class="lch-infoPro-skill-content2">
          <li class="lch-infoPro-skill-list1">과목 : 데이터베이스 활용, 프로그래밍 언어 활용, 정보시스템 기반 기술 (필답형)</li>
          <li class="lch-infoPro-skill-list2">출제유형 (시험시간) : 필답형(2시간30분)</li>
          <li class="lch-infoPro-skill-list3">100점을 만점으로 하여 60점 이상</li>
        </ul>
      </div>
    </article>
  </main>
  <jsp:include page="../../../basic/footer.jsp" />
</body>

</html>