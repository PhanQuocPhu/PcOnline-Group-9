package controllers;

import entity.Admins;
import models.AdminsModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "AdminLoginController", urlPatterns = {"/admin/login"})
public class AdminLoginController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String rem = request.getParameter("remember");
        HttpSession session = request.getSession();

        Admins admin = AdminsModel.get(email);

        if (admin == null) {
            request.setAttribute("LoginMess", "Username doesn't exist");
            ServletUtils.forward("/views/Admin/account/login.jsp", request, response);
        } else if (AdminsModel.checkPass(password, admin.getPassword())) {
            request.setAttribute("LoginMess", "Wrong password");
            request.setAttribute("email", email);
            ServletUtils.forward("/views/Admin/account/login.jsp", request, response);
        } else {
            session.setAttribute("admin", admin);
            Cookie cemail = new Cookie("email", email);
            Cookie cpassword = new Cookie("password", password);
            if (rem != null) {
                cemail.setMaxAge(30 * 24 * 60 * 60);
                cpassword.setMaxAge(30 * 24 * 60 * 60);
            } else {
                cemail.setMaxAge(0);
                cpassword.setMaxAge(0);
            }
            response.addCookie(cemail);
            response.addCookie(cpassword);
            System.out.println("Login Successfully");
            response.sendRedirect("/admin");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/Admin/account/login.jsp").forward(request, response);
    }
}
