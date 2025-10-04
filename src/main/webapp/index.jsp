<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = (String) request.getAttribute("name");
    String title = (String) request.getAttribute("title");
    String email = (String) request.getAttribute("email");
    String phone = (String) request.getAttribute("phone");
    String location = (String) request.getAttribute("location");
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><%= name %> - <%= title %></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <!-- Thêm Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
<nav>
    <div class="logo"><%= name %></div>
    <div class="nav-links">
        <a href="${pageContext.request.contextPath}/">Trang chủ</a>
        <a href="${pageContext.request.contextPath}/about">Giới thiệu</a>
        <a href="${pageContext.request.contextPath}/projects">Dự án</a>
        <a href="${pageContext.request.contextPath}/contact">Liên hệ</a>
    </div>
    <div class="theme-toggle">
        <div class="theme-switch" id="themeToggle"></div>
    </div>
</nav>

<main>
    <section class="hero">
        <div class="hero-content">
            <div class="hero-text">
                <h1>Xin chào, tôi là <span><%= name %></span></h1>
                <h2><%= title %></h2>
                <p>Sinh viên năm 3 đang trong quá trình trao dồi kinh nghiệm và kiến thức phát triển ứng dụng web.</p>
                <div class="buttons">
                    <a href="${pageContext.request.contextPath}/projects" class="btn">Dự án của tôi</a>
                    <a href="${pageContext.request.contextPath}/contact" class="btn outline">Liên hệ ngay</a>
                </div>
            </div>
            <div class="hero-image">
                <img src="${pageContext.request.contextPath}/img/avatar.jpg" alt="Ảnh đại diện của <%= name %>">
            </div>
        </div>
    </section>

    <section class="info">
        <div class="info-grid">
            <div class="info-item">
                <div class="icon">
                    <i class="fas fa-code"></i>
                </div>
                <h3>Email</h3>
                <p><%= email %></p>
            </div>
            <div class="info-item">
                <div class="icon">
                    <i class="fas fa-laptop-code"></i>
                </div>
                <h3>Điện thoại</h3>
                <p><%= phone %></p>
            </div>
            <div class="info-item">
                <div class="icon">
                    <i class="fas fa-globe-asia"></i>
                </div>
                <h3>Địa điểm</h3>
                <p><%= location %></p>
            </div>
        </div>
    </section>
</main>

<footer>
    <p>&copy; 2025 <%= name %>. BY HCMUTE.</p>
</footer>
<script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>