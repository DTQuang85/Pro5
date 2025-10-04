<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="murach.por5.WebsiteServlet.Project" %>
<%
    String name = (String) request.getAttribute("name");
    List<Project> projects = (List<Project>) request.getAttribute("projects");
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dự án - <%= name %></title>
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
    <section class="projects">
        <h1>Dự án của tôi</h1>
        <div class="project-grid">
            <%
                if (projects != null) {
                    for (Project project : projects) {
            %>
            <div class="project-card">
                <h3><%= project.getName() %></h3>
                <p><%= project.getDescription() %></p>
                <a href="<%= project.getLink() %>" target="_blank" class="btn">Xem</a>
            </div>
            <%
                    }
                }
            %>
        </div>
    </section>
</main>

<footer>
    <p>&copy; 2025 <%= name %>. BY HCMUTE.</p>
</footer>
<script src="${pageContext.request.contextPath}/js/script.js"></script>
</body>
</html>