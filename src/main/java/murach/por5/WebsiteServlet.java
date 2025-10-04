package murach.por5;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "WebsiteServlet", value = {"", "/index", "/about", "/projects", "/contact"})
public class WebsiteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String path = request.getServletPath();
        String page = "index.jsp";

        // Thông tin cá nhân
        request.setAttribute("name", "Đàng Thiện Quang");
        request.setAttribute("title", "Pro5");
        request.setAttribute("email", "dtKwang.08@gmail.com");
        request.setAttribute("phone", "+84 342 946 447");
        request.setAttribute("location", "TP.HCM, Việt Nam");

        if (path.equals("/about")) {
            page = "about.jsp";
            request.setAttribute("about", "Tôi là sinh viên năm 3 ngành An Toàn Thông Tin với đam mê phát triển web.");

            // Danh sách kỹ năng
            List<String> skills = new ArrayList<>();
            skills.add("Java");
            skills.add("Servlet/JSP");
            skills.add("Spring Boot");
            skills.add("MySQL");
            skills.add("HTML/CSS");
            skills.add("JavaScript");
            skills.add("Git");
            skills.add("Linux");
            request.setAttribute("skills", skills);

        } else if (path.equals("/projects")) {
            page = "projects.jsp";
            // Danh sách dự án
            List<Project> projects = new ArrayList<>();
            projects.add(new Project("Bài Tập 1", "https://dangthienquang.odoo.com/", "Bài Tập 1 môn Lập trình Web"));
            projects.add(new Project("Bài Tập 2", "https://dangthienquang-bt2lrw.onrender.com/", "Bài Tập 2 môn Lập trình Web"));
            projects.add(new Project("Bài Tập 3", "https://bt3lrw.onrender.com/", "Bài Tập 3 môn Lập trình Web"));
            projects.add(new Project("Bài Tập 4", "https://bt4lrw-1.onrender.com/", "Bài Tập 4 môn Lập trình Web"));
            projects.add(new Project("Bài Tập 5", "https://bt6-1-6-2ltw.onrender.com/survey", "Bài Tập 5 môn Lập trình Web"));
            projects.add(new Project("Bài Tập 6", "https://bt8ltw.onrender.com/", "Bài Tập 6 môn Lập trình Web"));
            projects.add(new Project("Bài Tập 6.1", "https://bt9-1lrw.onrender.com/", "Bài Tập 6.1 môn Lập trình Web"));
            projects.add(new Project("Bài Tập 6.2", "https://bt9-2ltw.onrender.com/", "Bài Tập 6.2 môn Lập trình Web"));
            projects.add(new Project("Bài Tập 7.1", "https://bt7-1lrw.onrender.com/", "Bài Tập 7.1 môn Lập trình Web"));
            projects.add(new Project("Bài Tập 7.2", "https://bt7-2lrw.onrender.com/", "Bài Tập 7.2 môn Lập trình Web"));
            projects.add(new Project("Bài Tập 8.1", "https://bt12-1ltw.onrender.com/", "Bài Tập 8.1 môn Lập trình Web"));
            projects.add(new Project("Bài Tập 8.2", "https://bt12-2ltw-ol6q.onrender.com/", "Bài Tập 8.2 môn Lập trình Web"));
            projects.add(new Project("Bài Tập 9.1", "https://bt13-1lrw.onrender.com/", "Bài Tập 9.1 môn Lập trình Web"));
            projects.add(new Project("Bài Tập 9.2", "https://bt13-2lrw.onrender.com/", "Bài Tập 9.2 môn Lập trình Web"));
            projects.add(new Project("Phát hiện vượt đèn đỏ", "https://github.com/DTQuang85/DoAnMon/tree/master/IOT_source%20codes", "Hệ thống quản giám sát ATGT"));
            projects.add(new Project("Mô phỏng Blockchain", "https://github.com/DTQuang85/DoAnMon/tree/master/NHOM_M3Q_SourceCode_MMUD", "Môn MMUD"));
            request.setAttribute("projects", projects);

        } else if (path.equals("/contact")) {
            page = "contact.jsp";
        }

        RequestDispatcher dispatcher = request.getRequestDispatcher("/" + page);
        dispatcher.forward(request, response);
    }

    public static class Project {
        private String name;
        private String link;
        private String description;

        public Project(String name, String link, String description) {
            this.name = name;
            this.link = link;
            this.description = description;
        }

        public String getName() { return name; }
        public String getLink() { return link; }
        public String getDescription() { return description; }
    }
}