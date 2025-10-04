<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%
    String name = (String) request.getAttribute("name");
    String about = (String) request.getAttribute("about");
    List<String> skills = (List<String>) request.getAttribute("skills");
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giới thiệu - <%= name %></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
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
    <section class="about">
        <h1>Giới thiệu</h1>
        <div class="about-content">
            <div class="about-text">
                <p><%= about %></p>
                <h2>Kỹ năng</h2>
                <div class="skills">
                    <%
                        if (skills != null) {
                            for (String skill : skills) {
                    %>
                    <span class="skill"><%= skill %></span>
                    <%
                            }
                        }
                    %>
                </div>
            </div>
            <div class="about-image">
                <img src="${pageContext.request.contextPath}/img/avatar.jpg" alt="Avatar">
            </div>
        </div>
    </section>
</main>

<footer>
    <p>&copy; 2024 <%= name %>. BY HCMUTE.</p>
</footer>
<script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>