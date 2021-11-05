package controllers;

import entity.Categories;
import entity.GoogleEn;
import entity.Users;
import models.AdminsModel;
import models.UsersModel;
import utils.GoogleUtil;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "LoginController", value = "/home/login/*")
public class LoginController extends FrontEndController {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String rem = request.getParameter("remember");
        HttpSession session = request.getSession();
        String action = request.getParameter("command");
        Users users = UsersModel.get(email);
        switch (action) {
            case "login":
                if (users == null) {
                    request.setAttribute("LoginMess", "Username doesn't exist");
                    ServletUtils.forward("/views/Guest/account/login.jsp", request, response);
                }
//                else if (!(password.equals("123"))) {
                    else if (!UsersModel.checkPass(password, users.getPassword())) {
                    System.out.println(password);
                    request.setAttribute("LoginMess", "Wrong password");
                    request.setAttribute("email", email);
                    ServletUtils.forward("/views/Guest/account/login.jsp", request, response);
                } else {
                    session.setAttribute("users", users);
                    Cookie aemail = new Cookie("email", email);
                    Cookie apassword = new Cookie("password", users.getPassword());
                    if (rem != null) {
                        aemail.setMaxAge(30 * 24 * 60 * 60);
                        apassword.setMaxAge(30 * 24 * 60 * 60);
                    } else {
                        aemail.setMaxAge(0);
                        apassword.setMaxAge(0);
                    }
                    response.addCookie(aemail);
                    response.addCookie(apassword);
                    System.out.println("Login Successfully");
                    Users user = new Users();
                    user.setEmail(users.getEmail());
                    user.setName(users.getName());

//                    System.out.println(session.getAttribute("admin"));
                    session.setAttribute("user", user);
                    ServletUtils.redirect("/home", request, response);
//                    response.sendRedirect("/home");
                }
                break;
            case "logout":
                session.setAttribute("users", null);
                System.out.println("Log out Successfully");
                response.sendRedirect("/users/login");
                break;
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Categories> listc = getAllCate();
        HttpSession session = request.getSession();
        request.setAttribute("categories", listc);
        request.setAttribute("cart", session.getAttribute("cart"));
        request.setAttribute("LoginMess", "Welcome back!!");
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/normal";
        }
        switch (path) {
            case "/normal":
                ServletUtils.forward("/views/Guest/account/login.jsp", request, response);
                break;
            case "/login-google":
                String code = request.getParameter("code");
                if (code == null || code.isEmpty()) {
                    request.setAttribute("wrongpass", "wrongpass");
                    ServletUtils.redirect("/home/login", request, response);
                } else {
                    String accessToken = GoogleUtil.getToken(code);
                    GoogleEn googleEn = GoogleUtil.getUserInfo(accessToken);

                    Users user = new Users();
                    user.setEmail(googleEn.getEmail());
                    user.setName(googleEn.getName() + googleEn.getFamily_name());
                    user.setAvatar(googleEn.getPicture());

                    session.setAttribute("user", user);
                    ServletUtils.redirect("/home", request, response);
                }
                break;
        }

    }

    private void manageLogin(HttpServletRequest request, HttpServletResponse response)
    {

    }
}
