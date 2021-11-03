package controllers;

import entity.Categories;
import entity.GoogleEn;
import entity.Users;
import models.UsersModel;
import utils.GoogleUtil;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "LoginController", value = "/home/login/*")
public class LoginController extends FrontEndController {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String rem = request.getParameter("remember");
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
