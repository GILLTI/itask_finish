const tagBtns = document.querySelectorAll('.askDetail-tag-btn');
const tags = document.querySelectorAll('.ask-tag-btn');
const articleSave = document.querySelector('#articleSave');
const articleDelete = document.querySelector('#articleDelete');
const categoryButtons = document.querySelectorAll('.category-btn');


articleSave.addEventListener('click', function () {
  alert("게시물이 저장되었습니다.");
});
articleDelete.addEventListener('click', function () {
  alert("해당 게시물이 삭제되었습니다.");
});

	
	
	
	
	
// 각 태그 버튼에 클릭 이벤트 추가
tags.forEach(button => {
  button.addEventListener('click', function () {
    tags.forEach(btn => {
      btn.style.color = "#d96073"; 
      btn.style.backgroundColor = "#ffffff"; 
    });

    // 클릭된 버튼에 새로운 스타일 적용
    button.style.color = "#ffffff"; 
    button.style.backgroundColor = "#d96073"; 
  });
});

categoryButtons.forEach(button => {
  button.addEventListener('click', function () {
    // 모든 버튼의 스타일 초기화
    categoryButtons.forEach(btn => {
      btn.style.color = "#333333"; // 기본 텍스트 색상
      btn.style.backgroundColor = "#dddddd"; // 기본 배경 색상
    });

    // 클릭된 버튼 스타일 변경
    button.style.color = "#ffffff"; // 선택된 텍스트 색상
    button.style.backgroundColor = "#d96073"; // 선택된 배경 색상
  });
});

tagBtns.forEach((tagBtn) => {
  tagBtn.addEventListener('click', function () {
    // 모든 버튼에서 bjs-ask-select 클래스 제거
    tagBtns.forEach((btn) => btn.classList.remove('askDetail-select'));

    // 클릭된 버튼에 bjs-ask-select 클래스 추가
    tagBtn.classList.add('askDetail-select');
  });
});

// 모니터 버튼 누르면 1증가
let count = -1;
const img = document.getElementById('Detail-moniter-img');
const countplus = document.getElementById('Detail-monitercount');
let commentCount = 1;

function addComment() {
  const commentInput = document.getElementById('comment-input'); // ID가 정확한지 확인
  if (commentInput) {
    const commentText = commentInput.value.trim();

    if (commentText !== '') {
      // 새로운 댓글을 생성
      const commentArea = document.createElement('div');
      commentArea.classList.add('askDetail-comment-show');

      const commmentAuthor = document.createElement('span');
      commmentAuthor.classList.add('askDetail-comment-author');
      commmentAuthor.textContent = "관리자"; // 나중에 불러오는 거 여기 추가

      const comment = document.createElement('div');
      comment.classList.add('askDetail-comment-section');
      comment.textContent = commentText;

      const commentInfo = document.createElement('div');
      commentInfo.classList.add('askDetail-comment-info');

      const commentDate = document.createElement('span');
      commentDate.classList.add('askDetail-comment-ate');
      commentDate.textContent = "1시간 전"; // 나중에 불러오는 거 여기 추가

      const commentMonitor = document.createElement('span');
      commentMonitor.classList.add('askDetail-comment-monitor');

      const commentMonitorNum = document.createElement('span');
      commentMonitorNum.classList.add('askDetail-comment-monitor-num');
      commentMonitorNum.textContent = " 0"; // 나중에 불러오는 거 여기 추가

      const commentdelete = document.createElement('span');
      commentdelete.addEventListener('click', function () {
        if (confirm('댓글을 삭제하시겠습니까?')) {
          alert('댓글을 삭제합니다');
          comment.textContent = '관리자에 의해 삭제된 댓글입니다.';
          comment.classList.add('askDetail-delete-comment-style');
          commentMonitorNum.textContent = '-';
        } else {
          alert('취소');
        }
      });
      commentdelete.classList.add('askDetail-comment-delete');
      commentdelete.textContent = "삭제";

      const monitorImg = document.createElement('img');
      monitorImg.setAttribute('src', './../../assets/img/monitor.png');
      monitorImg.setAttribute('alt', '사진오류');
      monitorImg.addEventListener('click', function () {
        if (comment.textContent === '삭제된 댓글입니다.') {
          alert('삭제한 댓글에는 모니터기능이 제한됩니다.');
          count = 316;
        } else if (count === -1) {
          count = 1;
          commentMonitorNum.textContent = parseInt(commentMonitorNum.textContent) + count;
        } else {
          count = -1;
          commentMonitorNum.textContent = parseInt(commentMonitorNum.textContent) + count;
        }
      });

      const commentSection = document.getElementById('comment-section');
      commentSection.appendChild(commentArea);
      commentArea.appendChild(commmentAuthor);
      commentArea.appendChild(comment);
      commentArea.appendChild(commentInfo);
      commentInfo.appendChild(commentDate);
      commentInfo.appendChild(commentMonitor);
      commentMonitor.appendChild(monitorImg);
      commentMonitor.appendChild(commentMonitorNum);
      commentInfo.appendChild(commentdelete);

      commentCount++;
      document.getElementById('comment-count').textContent = commentCount;

      // 입력창 비우기
      commentInput.value = '';
    } else {
      alert('댓글을 입력해주세요!');
    }
  } else {
    console.error('comment-input 요소를 찾을 수 없습니다.');
  }
}
