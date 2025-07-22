# 1.프로젝트 제목 및 소개
## Re:NT
<img width="806" alt="ReNT소개" src="https://github.com/user-attachments/assets/f7194e4f-59ec-49ae-8212-b80d21537ec8" />
<br>

- 이 프로젝트는 **JSP/Servlet을 활용한 C2C(Customer to Customer) 렌탈 플랫폼** 입니다.

- 사용자 간의 **물품 판매 및 대여 서비스** 를 제공하는 웹사이트로, 개인이 직접 물건을 등록하고 다른 사용자와 거래할 수 있도록 지원합니다.

# 2.프로젝트 개요 / 목표

- 버리기엔 아까운 물품을 REUSE(자원 효율성 증가), RECYCLE(지속가능한 순환), RENT(소유보다 공유)할 수 있는 사이트입니다.

**1.사용자 친화적 사이트
2.확실한 수익모델
3.공공의 이익에 기여**

# 3.팀원 및 담당업무

| 팀원 | 담당 업무 |
|------|-----------|
| **이아림** | - 마이페이지: 구매상품 / 대여상품, 판매상품 / 대여상품<br>- 상품 및 주문 생명주기 전체 관리<br>- 프로젝트 총괄: 팀 내 일정 조율, 우선순위 결정, 이슈 관리, Git 브랜치 전략 등<br>- 발표 |
| **박기도** | - 마이페이지: 신고, 리뷰, 찜, 쪽지 목록 조회, 개인정보 수정, 배송지 관리<br>- 상품목록: 메인 화면, 필터 및 정렬 기능 포함<br>- API: FCM 알람, 카카오 맵, 카카오/네이버 소셜로그인, 다음 우편번호<br>- 피그마 및 디자인 총괄<br>- 시연영상 제작 |
| **추혜민** | - 관리자페이지: 회원/카테고리/정산/대여지연 등 관리 모듈 전체 구현<br>- DB 총괄: 멤버등급, 카테고리, 신고, 정산 테이블 설계 및 생성<br>- PPT 작성: 발표용 스크립트 및 시각자료 구성 |
| **김한재** | - 상품 등록(판매, 대여, 나눔)<br>- 상품 상세 페이지: 대여하기, 구매하기, 리뷰, 쪽지, 신고, 공유 기능 구현<br>- API: Toss 결제 및 환불 기능<br>- DB 총괄: 메인 테이블(물품, 사용자, 거래, 리뷰) 생성 및 테스트 데이터 준비, FK 제약 구성 |

# 4.서비스 소개 및 주요 기능

### 사용자 중심 서비스
 - 판매/대여/나눔 방식으로 상품 등록 가능
 - 보증금 기반의 대여 결제 및 반납 후 정산 시스템
 - 쪽지 기능을 통한 사용자 간 거래 전 커뮤니케이션
 - 찜/리뷰/평점으로 거래 전 평가 제공
 - 카테고리 / 필터 / 검색 기능으로 빠른 탐색 가능

### 관리자 기능
 - 회원 목록 및 정산 내역 관리
 - 정산처리 자동화 및 지연건 수기 처리
 - 공지 및 FAQ 등록/수정
 - 신고 접수/처리, 알림 전송

# 5.기능 시연

### 1) 관리자 대시보드
**회원관리**  
_가입된 회원 목록 조회 및 등급 변경_  
<img src="./src/docs/images/회원관리-관리자.gif" alt="회원관리-관리자.gif" width="1000px" />

**카테고리 관리**  
_상품 카테고리 추가/수정/삭제_  
<img src="./src/docs/images/카테고리관리-관리자.gif" alt="카테고리관리-관리자.gif" width="1000px" />

**상품관리**  
_전체 상품 목록 확인 및 관리_  
<img src="./src/docs/images/상품관리-관리자.gif" alt="상품관리-관리자.gif" width="1000px" />

**주문/정산**  
_주문 내역 확인 및 정산 처리_  
<img src="./src/docs/images/정산관리-관리자.gif" alt="정산관리-관리자.gif" width="1000px" />

**고객지원/알림관리**  
_고객문의 처리 및 알림 발송_  
<img src="./src/docs/images/고객지원,알림관리-관리자.gif" alt="고객지원,알림관리-관리자.gif" width="1000px" />

### 2)사용자 화면
**메인 피드**  
_오늘의 인기·카테고리별 상품 피드 보기_  
<img src="./src/docs/images/목록필터정렬.gif" alt="목록필터정렬.gif" width="1000px" />

**카카오 로그인/알람**  
_카카오 소셜 로그인 & 알림 설정_  
<img src="./src/docs/images/카카오로그인-알람.gif" alt="카카오로그인-알람.gif" width="1000px" />

**상품 상세**  
_상품 정보, 리뷰, 판매자 프로필 확인_  
<img src="./src/docs/images/대여등록하기.gif" alt="대여등록하기.gif" width="1000px" />

**대여하기 프로세스**  
_대여 기간 선택 후 신청_  
<img src="./src/docs/images/대여하기2.gif" alt="대여하기2.gif" width="1000px" />

**마이페이지**  
_개인정보·주문내역·리뷰 관리_  
<img src="./src/docs/images/배송지관리 개인정보수정.gif" alt="배송지관리 개인정보수정.gif" width="1000px" />

**찜/신고/쪽지**  
_찜하기, 신고하기, 쪽지 보내기 기능_  
<img src="./src/docs/images/찜,신고,쪽지.gif" alt="찜,신고,쪽지.gif" width="1000px" />


# 5.개발환경 및 기술스택
**FrontEnd**  
![jQuery](https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white)
![JSON](https://img.shields.io/badge/JSON-000000?style=for-the-badge&logo=json&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)  

**BackEnd**  
![JSP](https://img.shields.io/badge/JSP-007396?style=for-the-badge&logo=java&logoColor=white)
![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=java&logoColor=white)
![Servlet](https://img.shields.io/badge/Servlet-6DB33F?style=for-the-badge&logo=java&logoColor=white)
![MyBatis](https://img.shields.io/badge/MyBatis-000000?style=for-the-badge&logo=mybatis&logoColor=white)

**RDS**  
![HeidiSQL](https://img.shields.io/badge/HeidiSQL-4479A1?style=for-the-badge&logo=heidisql&logoColor=white)
![MariaDB](https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white)  

**server**  
![Apache Tomcat](https://img.shields.io/badge/Apache_Tomcat-F8DC75?style=for-the-badge&logo=apachetomcat&logoColor=black)  

**형상관리**  
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)

**설계협업**  
![Figma](https://img.shields.io/badge/Figma-FF7262?style=for-the-badge&logo=figma&logoColor=white)
![Notion](https://img.shields.io/badge/Notion-000000?style=for-the-badge&logo=notion&logoColor=white)
![ERDCloud](https://img.shields.io/badge/ERDCloud-00B9F1?style=for-the-badge&logo=erdcloud&logoColor=white)
![Google Sheets](https://img.shields.io/badge/Google_Sheets-34A853?style=for-the-badge&logo=google-sheets&logoColor=white)

**API**  
![Toss Payment](https://img.shields.io/badge/Toss_Payment-1E66B5?style=for-the-badge&logo=toss&logoColor=white)
![Kakao Map](https://img.shields.io/badge/Kakao_Map-F7E600?style=for-the-badge&logo=kakao&logoColor=black)
![Kakao Login](https://img.shields.io/badge/Kakao_Login-F7E600?style=for-the-badge&logo=kakao&logoColor=black)
![Naver Login](https://img.shields.io/badge/Naver_Login-03C75A?style=for-the-badge&logo=naver&logoColor=white)
![Firebase](https://img.shields.io/badge/Firebase-FFCA28?style=for-the-badge&logo=firebase&logoColor=black)


