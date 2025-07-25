<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RE:NT 메인</title>
<link rel="stylesheet" href="${contextPath}/CSS/Main/main.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body>

<jsp:include page="../Header/header.jsp"/>

<!-- 🔸 배너 영역 -->
<section class="banner">
  <div class="banner-container">
    <h2>RE:NT에서 렌트하세요!</h2>
    <a href="${contextPath}/service"><button>이용가이드 &gt;</button></a>
  </div>
  <div class="banner-img">
    <img src="${contextPath}/img/rent.jpg" alt="이벤트 이미지">
  </div>
</section>

<!-- 🔸 추천 상품 -->
<section>
  <div class="section-title">오늘의 인기 상품이에요!</div>
  <div class="product-grid">
    <c:forEach var="p" items="${popularList}">
      <a href="${contextPath}/productDetail?no=${p.no}&tradeType=${p.tradeType}">
        <div class="product-card">
          <c:choose>
            <c:when test="${empty p.img1}">
              <img src="${contextPath}/img/default_product.png" alt="기본 이미지" loading="lazy"/>
            </c:when>
            <c:otherwise>
              <c:choose>
                <c:when test="${fn:startsWith(p.img1, 'http')}">
                  <img src="${p.img1}" alt="${p.title}" loading="lazy" />
                </c:when>
                <c:otherwise>
                  <img src="${contextPath}/upload/${p.img1}" alt="${p.title}" loading="lazy" />
                </c:otherwise>
              </c:choose>
            </c:otherwise>
          </c:choose>
          <div class="product-name">${p.title}</div>

          <div class="product-price">
            <c:choose>
              <c:when test="${p.tradeType == '나눔'}">
                <span class="free">무료나눔</span><br/>
              </c:when>
              <c:otherwise>
                <c:if test="${not empty p.salePrice and p.tradeType != '대여' and p.tradeType != '나눔'}">
                  <span class="sale">판매가 <fmt:formatNumber value="${p.salePrice}" type="number" />원</span><br/>
                </c:if>
                <c:if test="${not empty p.rentPrice}">
                  <span class="rent">대여 <fmt:formatNumber value="${p.rentPrice}" type="number" />원</span><br/>
                </c:if>
                <c:if test="${(p.tradeType == '대여' or p.tradeType == '판매대여') and not empty p.secPrice}">
                  <span class="deposit">보증금 <fmt:formatNumber value="${p.secPrice}" type="number" />원</span>
                </c:if>
              </c:otherwise>
            </c:choose>
          </div>

          <div class="product-location">${p.deliveryAddr}</div>
          <div class="product-time">${p.timeAgo}</div>
        </div>
      </a>
    </c:forEach>
  </div>
</section>

<!-- 🔸 내 동네 상품 -->
<section>
  <div class="section-title">내 동네에서 이런 것도 빌릴 수 있어요!</div>
  <div class="product-grid">
    <c:forEach var="p" items="${localList}">
      <a href="${contextPath}/productDetail?no=${p.no}&tradeType=${p.tradeType}">
        <div class="product-card">
          <c:choose>
            <c:when test="${empty p.img1}">
              <img src="${contextPath}/img/default_product.png" alt="기본 이미지" />
            </c:when>
            <c:otherwise>
              <c:choose>
                <c:when test="${fn:startsWith(p.img1, 'http')}">
                  <img src="${p.img1}" alt="${p.title}" />
                </c:when>
                <c:otherwise>
                  <img src="${contextPath}/upload/${p.img1}" alt="${p.title}" />
                </c:otherwise>
              </c:choose>
            </c:otherwise>
          </c:choose>
          <div class="product-name">${p.title}</div>

          <div class="product-price">
            <c:choose>
              <c:when test="${p.tradeType == '나눔'}">
                <span class="free">무료나눔</span><br/>
              </c:when>
              <c:otherwise>
                <c:if test="${not empty p.salePrice and p.tradeType != '대여' and p.tradeType != '나눔'}">
                  <span class="sale">판매가 <fmt:formatNumber value="${p.salePrice}" type="number" />원</span><br/>
                </c:if>
                <c:if test="${not empty p.rentPrice}">
                  <span class="rent">대여 <fmt:formatNumber value="${p.rentPrice}" type="number" />원</span><br/>
                </c:if>
                <c:if test="${(p.tradeType == '대여' or p.tradeType == '판매대여') and not empty p.secPrice}">
                  <span class="deposit">보증금 <fmt:formatNumber value="${p.secPrice}" type="number" />원</span>
                </c:if>
              </c:otherwise>
            </c:choose>
          </div>

          <div class="product-location">${p.deliveryAddr}</div>
          <div class="product-time">${p.timeAgo}</div>
        </div>
      </a>
    </c:forEach>
  </div>
</section>

<jsp:include page="../Header/footer.jsp"/>

<c:if test="${not empty sessionScope.id}">
  <script type="module" src="${contextPath}/js/fcm-init.js"></script>
</c:if>

</body>
</html>
