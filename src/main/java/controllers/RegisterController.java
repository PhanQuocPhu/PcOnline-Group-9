package controllers;

import entity.Users;
import models.UsersModel;
import services.helper;

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

            if(!pass.equals(rePass)) return; //khong giong pass


        try {
                Users user = new Users();
               int id = UsersModel.getNewId();
                System.out.println(id);
                // check đã có user nào sử dụng email chưa
                if(UsersModel.getByEmail(email)!=null) return;
                //System.out.println("ko trung email");
                // check nếu ko nhập thì đc,nếu nhập khác 10/11 số thì ko submit
                if(phone.length()!=0)
                {
                    if(checkPhoneNumber(phone)==false) return;
                    user.setPhone(phone);
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
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }




    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/views/Guest/account/register.jsp").forward(request, response);
    }
    public boolean checkPhoneNumber(String phone) {
        if(phone.length()==10) { //sdt tinh theo vung` viet nam co 10 so
            Pattern pattern = Pattern.compile("^\\d{10}$");
            Matcher matcher = pattern.matcher(phone);
            return matcher.matches();
        }
        else if(phone.length()==11)
        {
            Pattern pattern = Pattern.compile("^\\d{11}$");
            Matcher matcher = pattern.matcher(phone);
            return matcher.matches();
        }
        else {
            return  false;
        }
    }


}
