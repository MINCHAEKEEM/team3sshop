<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <nav class="navbar">
        <div class="logo"><a href="index.jsp">TEST 쇼핑몰</a></div>
    </nav>
    <div class="auth-container">
        <div class="auth-box">
            <h2>로그인</h2>
            <form action="login" method="post">
                <input type="text" name="id" placeholder="아이디" required>
                <input type="password" name="pw" placeholder="비밀번호" required>
                <div class="btn-group">
                    <button type="submit">로그인</button>
                </div>
            </form>
        </div>
        <div class="sub-link">
            <a href="register.jsp">회원가입</a>
        </div>
    </div>
</body>
</html>


