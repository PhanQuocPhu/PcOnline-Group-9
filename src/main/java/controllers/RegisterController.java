package controllers;

import entity.Users;
import models.UsersModel;
import services.helper;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet(name = "RegisterController",urlPatterns = "/home/register")
public class RegisterController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String fistName=request.getParameter("firstName");
            String lastName=request.getParameter("lastName");
            String pass=request.getParameter("pass");
            String rePass=request.getParameter("rePass");
            String phone=request.getParameter("phone");
            String email=request.getParameter("email");
            String address=request.getParameter("address");
            if(!pass.equals(rePass))
            {
                request.setAttribute("LoginMess", "Password doesn't match");
                ServletUtils.forward("/views/Guest/account/register.jsp", request, response);
                return;
            }
        try {
                Users user = new Users();
               int id = UsersModel.getNewId();
                System.out.println(id);
                // check đã có user nào sử dụng email chưa
                if(UsersModel.getByEmail(email)!=null) {
                    request.setAttribute("LoginMess", "Email already in use");
                    ServletUtils.forward("/views/Guest/account/register.jsp", request, response);
                    return;
                }
                // check phone
                if(phone.length()!=0)
                {
                    //check kí tự ô phone number
                    Pattern pattern = Pattern.compile(".*[^0-9].*");
                    Matcher matcher = pattern.matcher(phone);
                    if(!matcher.matches()){
                        request.setAttribute("LoginMess", "Wrong Phone Number");
                        ServletUtils.forward("/views/Guest/account/register.jsp", request, response);
                        return;
                    }
                    else{
                        user.setPhone(phone);
                    }
                }
                String name = lastName+" "+fistName;
                Timestamp timestamp = helper.getCurrentTimeStamp();
                user.setId(id);
                user.setEmail(email);
                user.setName(name);
                user.setPassword(pass);
                user.setAddress(address);
                user.setCreatedAt(timestamp);
                user.setUpdatedAt(timestamp);
                UsersModel.create(user);
                response.sendRedirect("/home/login");
            } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/Guest/account/register.jsp").forward(request, response);
    }



}
