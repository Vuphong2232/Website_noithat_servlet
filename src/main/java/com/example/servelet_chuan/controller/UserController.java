package com.example.servelet_chuan.controller;

import com.example.servelet_chuan.entities.Users;
import com.example.servelet_chuan.service.UserService;
import org.mindrot.jbcrypt.BCrypt;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "UserController", urlPatterns = {
        "/register", "/login", "/profile",
        "/auth/profile", "/auth/login", "/auth/register", "/logout"
})
public class UserController extends HttpServlet {
    private final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();

        // Tự động đăng nhập nếu có cookie "rememberUser"
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            Cookie[] cookies = request.getCookies();
            if (cookies != null) {
                for (Cookie cookie : cookies) {
                    if ("rememberUser".equals(cookie.getName())) {
                        String username = cookie.getValue();
                        Users user = userService.getUserByUsername(username);
                        if (user != null) {
                            request.getSession(true).setAttribute("user", user);
                        }
                    }
                }
            }
        }

        switch (path) {
            case "/auth/login":
                request.getRequestDispatcher("/client/auth/login.jsp").forward(request, response);
                break;
            case "/auth/register":
                request.getRequestDispatcher("/client/auth/register.jsp").forward(request, response);
                break;
            case "/auth/profile":
                request.getRequestDispatcher("/client/auth/profile.jsp").forward(request, response);
                break;
            case "/logout":
                Cookie cookie = new Cookie("rememberUser", "");
                cookie.setMaxAge(0);
                cookie.setPath("/");
                response.addCookie(cookie);
                request.getSession().invalidate();
                response.sendRedirect(request.getContextPath() + "/auth/login");
                break;

            default:
                response.sendError(HttpServletResponse.SC_NOT_FOUND);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String path = request.getServletPath();

        if ("/register".equals(path)) {
            String username = request.getParameter("username");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String hashedPassword = BCrypt.hashpw(password, BCrypt.gensalt());

            if (username == null || email == null || password == null) {
                out.print("{\"status\":1,\"msg\":\"Vui lòng điền đầy đủ thông tin\"}");
                out.flush();
                return;
            }

            if (userService.check_user(email, username)) {
                out.print("{\"status\":1,\"msg\":\"Email hoặc Username đã tồn tại\"}");
                out.flush();
                return;
            }

            Users newUser = new Users(username, email, hashedPassword);
            userService.addUser(newUser);
            out.print("{\"status\":2,\"msg\":\"Đăng ký thành công\"}");
            out.flush();

        } else if ("/auth/login".equals(path)) {
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            if (username == null || password == null || username.trim().isEmpty() || password.trim().isEmpty()) {
                out.print("{\"status\":1,\"msg\":\"Vui lòng nhập đầy đủ thông tin\"}");
                return;
            }

            Users user = userService.getUserByUsername(username);
            if (user == null || !BCrypt.checkpw(password, user.getPassword())) {
                out.print("{\"status\":0,\"msg\":\"Tài khoản hoặc mật khẩu không đúng\"}");
                return;
            }

            HttpSession session = request.getSession();
            session.setAttribute("user", user);


            if ("on".equals(request.getParameter("remember"))) {
                Cookie cookie = new Cookie("rememberUser", user.getUsername());
                cookie.setMaxAge(7 * 24 * 60 * 60); // 7 ngày
                cookie.setPath("/");
                response.addCookie(cookie);
            }

            out.print("{\"status\":2,\"msg\":\"Đăng nhập thành công\"}");
            out.flush();

        } else if ("/auth/profile".equals(path)) {
            String oldPass = request.getParameter("oldpass");
            String newPass = request.getParameter("newpass");
            String newPass1 = request.getParameter("newpass1");

            HttpSession session = request.getSession(false);
            Users currentUser = (Users) session.getAttribute("user");

            if (currentUser == null) {
                out.print("{\"status\":0,\"msg\":\"Bạn chưa đăng nhập\"}");
                return;
            }

            if (oldPass == null || newPass == null || newPass1 == null ||
                    oldPass.isEmpty() || newPass.isEmpty() || newPass1.isEmpty()) {
                out.print("{\"status\":1,\"msg\":\"Vui lòng nhập đầy đủ thông tin\"}");
                return;
            }

            if (!newPass.equals(newPass1)) {
                out.print("{\"status\":1,\"msg\":\"Xác nhận mật khẩu không khớp\"}");
                return;
            }

            if (!BCrypt.checkpw(oldPass, currentUser.getPassword())) {
                out.print("{\"status\":1,\"msg\":\"Mật khẩu cũ không chính xác\"}");
                return;
            }

            String hashedNewPass = BCrypt.hashpw(newPass, BCrypt.gensalt());
            boolean updated = userService.updatePassword(currentUser.getId(), hashedNewPass);

            if (updated) {
                currentUser.setPassword(hashedNewPass);
                session.setAttribute("user", currentUser);
                out.print("{\"status\":2,\"msg\":\"Đổi mật khẩu thành công\"}");
            } else {
                out.print("{\"status\":0,\"msg\":\"Đổi mật khẩu thất bại\"}");
            }
        }
    }
}
