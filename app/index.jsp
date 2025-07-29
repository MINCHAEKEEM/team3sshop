<%@ page contentType="text/html;charset=UTF-8" %>
<%
    String username = (session != null) ? (String) session.getAttribute("username") : null;
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TEST 쇼핑몰</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<!-- 🔷 상단 네비게이션 -->
<nav class="navbar">
    <div class="logo">
        <a href="index.jsp" style="text-decoration: none; color: inherit;">TEST 쇼핑몰</a>
    </div>
    <div class="nav-items">
        <form action="cart.jsp" method="get">
            <button class="nav-icon" title="장바구니">🛒</button>
        </form>

        <% if (username != null) { %>
            <form action="logout" method="post" onsubmit="return confirm('로그아웃 하시겠습니까?');">
                <button class="nav-btn">로그아웃</button>
            </form>
        <% } else { %>
            <form action="login.jsp">
                <button class="nav-btn">로그인</button>
            </form>
        <% } %>
    </div>
</nav>

<!-- 🔷 본문: 상품 리스트 -->
<main>
    <h2>인기 상품</h2>
    <div class="product-grid">
        <div class="product-card">
            <a href="product.jsp?id=1">
                <img src="https://your-s3-bucket.s3.amazonaws.com/product1.jpg" alt="상품1" />
                <p class="name">상품1</p>
                <p class="desc">상품 1</p>
                <p class="price">₩10,000</p>
            </a>
        </div>
        <div class="product-card">
            <a href="product.jsp?id=2">
                <img src="https://your-s3-bucket.s3.amazonaws.com/product2.jpg" alt="상품2" />
                <p class="name">상품2</p>
                <p class="desc">상품 2</p>
                <p class="price">₩15,000</p>
            </a>
        </div>
    </div>
</main>
</body>
</html>