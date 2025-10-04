<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String name = (String) request.getAttribute("name");
    String email = (String) request.getAttribute("email");
    String phone = (String) request.getAttribute("phone");
    String location = (String) request.getAttribute("location");
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liên hệ - <%= name %></title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        /* Additional fixes for contact page */
        .contact-page main {
            padding-top: 0 !important;
        }

        .contact-section {
            padding-top: 2rem !important;
        }

        /* Ensure grid alignment */
        @media (min-width: 769px) {
            .contact-grid {
                grid-template-columns: 1fr 1fr;
                align-items: start;
            }
        }
    </style>
</head>
<body class="contact-page">
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
    <section class="contact-section">
        <div class="container">
            <h1 class="section-title">Liên Hệ</h1>
            <div class="contact-grid">
                <!-- Thông tin liên hệ -->
                <div class="contact-info-card">
                    <div class="contact-header">
                        <i class="fas fa-paper-plane"></i>
                        <h2>Thông Tin Liên Hệ</h2>
                    </div>
                    <div class="contact-details">
                        <div class="contact-item">
                            <div class="contact-icon">
                                <i class="fas fa-envelope"></i>
                            </div>
                            <div class="contact-text">
                                <h3>Email</h3>
                                <p><%= email %></p>
                            </div>
                        </div>
                        <div class="contact-item">
                            <div class="contact-icon">
                                <i class="fas fa-phone"></i>
                            </div>
                            <div class="contact-text">
                                <h3>Điện Thoại</h3>
                                <p><%= phone %></p>
                            </div>
                        </div>
                        <div class="contact-item">
                            <div class="contact-icon">
                                <i class="fas fa-map-marker-alt"></i>
                            </div>
                            <div class="contact-text">
                                <h3>Địa Chỉ</h3>
                                <p><%= location %></p>
                            </div>
                        </div>
                    </div>
                    <div class="social-links">
                        <h3>Kết nối với tôi</h3>
                        <div class="social-icons">
                            <a href="https://www.facebook.com/thieqang08?locale=vi_VN" target="_blank" class="social-link">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="https://github.com/DTQuang85" target="_blank" class="social-link">
                                <i class="fab fa-github"></i>
                            </a>
                            <a href="https://linkedin.com/in/yourprofile" target="_blank" class="social-link">
                                <i class="fab fa-linkedin-in"></i>
                            </a>
                            <a href="https://twitter.com/yourusername" target="_blank" class="social-link">
                                <i class="fab fa-twitter"></i>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Form gửi tin nhắn -->
                <div class="contact-form-card">
                    <div class="form-header">
                        <i class="fas fa-comments"></i>
                        <h2>Gửi Tin Nhắn</h2>
                    </div>
                    <form class="message-form" id="contactForm">
                        <div class="form-group">
                            <label for="name">Họ và Tên *</label>
                            <input type="text" id="name" name="name" placeholder="Nhập họ và tên của bạn" required>
                            <div class="error-message" id="nameError"></div>
                        </div>

                        <div class="form-group">
                            <label for="email">Email *</label>
                            <input type="email" id="email" name="email" placeholder="Nhập địa chỉ email" required>
                            <div class="error-message" id="emailError"></div>
                        </div>

                        <div class="form-group">
                            <label for="subject">Chủ Đề *</label>
                            <input type="text" id="subject" name="subject" placeholder="Nhập chủ đề tin nhắn" required>
                            <div class="error-message" id="subjectError"></div>
                        </div>

                        <div class="form-group">
                            <label for="message">Nội Dung Tin Nhắn *</label>
                            <textarea id="message" name="message" placeholder="Nhập nội dung tin nhắn của bạn..." rows="6" required></textarea>
                            <div class="error-message" id="messageError"></div>
                        </div>

                        <button type="submit" class="submit-btn" id="submitBtn">
                            <i class="fas fa-paper-plane"></i>
                            Gửi Tin Nhắn
                        </button>
                    </form>
                </div>
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