package controllers;

import entity.Categories;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "LoginController", value = "/home/login")
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
        request.getRequestDispatcher("/views/Guest/account/login.jsp").forward(request, response);
    }
}
