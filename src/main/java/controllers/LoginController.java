package controllers;

import entity.Admins;
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

        Users user = get(email);
        String path = request.getPathInfo();
        switch (path) {
            case "/signin":
                if (user == null) {
                    request.setAttribute("LoginMess", "Email doesn't exist");
                    ServletUtils.forward("/views/Guest/account/login.jsp", request, response);
                } else if (!UsersModel.checkPass(password, user.getPassword())) {
                    System.out.println(password);
                    request.setAttribute("LoginMess", "Wrong password");
                    request.setAttribute("email", email);
                    ServletUtils.forward("/views/Guest/account/login.jsp", request, response);
                } else {
                    session.setAttribute("user", user);
                    Cookie aemail = new Cookie("email", email);
                    Cookie apassword = new Cookie("password", user.getPassword());
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

                    session.setAttribute("user", user);
                    ServletUtils.redirect("/home", request, response);
                }
                break;
            case "/signout":
                session.setAttribute("user", null);
                System.out.println("Log out Successfully");
                ServletUtils.redirect("/home", request, response);
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
            case "/signout":
                session.setAttribute("user", null);
                System.out.println("Log out Successfully");
                ServletUtils.redirect("/home", request, response);
                break;
        }

    }
    private Users get(String email){
        Users user = null;
        try {
            user = UsersModel.getByEmail(email);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return user;
    }
}