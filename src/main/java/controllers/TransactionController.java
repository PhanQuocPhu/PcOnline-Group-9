package controllers;

import entity.Categories;
import entity.Orders;
import entity.Transactions;
import entity.Users;
import models.OrdersModel;
import models.TransactionsModel;
import models.UsersModel;
import utils.ServletUtils;
import services.helper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

@WebServlet(name = "TransactionController", value = "/home/cart/checkout/*")
public class TransactionController extends FrontEndController {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/index";
        }
        switch (path){
            case "/placeorder":
            case "/vnpay":
                manageTransaction(request, response, path);
                break;
        }
        ServletUtils.redirect("/home", request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/index";
        }
        List<Categories> listc = getAllCate();
        request.setAttribute("categories", listc);
        if ("/index".equals(path)) {
            ServletUtils.forward("/views/Guest/cart/checkout.jsp", request, response);
        }
    }

    private void manageTransaction(HttpServletRequest request, HttpServletResponse response, String path) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Transactions transaction = (Transactions) session.getAttribute("cart");
        List<Orders> listo = transaction.getOrdersById();
        int id = getNewTransId();
        Users user = getUserById(5);
        String name = request.getParameter("name");
        String address = request.getParameter("address") + " TP." + request.getParameter("city");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String note =request.getParameter("note");
        Timestamp timestamp = helper.getCurrentTimeStamp();
        switch (path){
            case "/placeorder":
                transaction.setId(id);
                transaction.setUsersByTruserid(user);
                transaction.setTraddress(address);
                transaction.setTrphone(phone);
                transaction.setTrnote(note);
                transaction.setCreatedat(timestamp);
                transaction.setUpdatedat(timestamp);
                System.out.println(transaction.getTrtotal());
                TransactionsModel.create(transaction);
                for (Orders order : listo) {
                    System.out.println(order.getProductsByOrproductid().getProname());
                    order.setTransactionsByOrtransactionid(transaction);
                    OrdersModel.create(order);
                }
                break;
            case "/vnpay":
                break;
        }
    }

    int getNewOrderId() {
        int id = 0;
        try {
            id = OrdersModel.getNewId();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return id;
    }
    private int getNewTransId(){
        int id = 0;
        try {
            id = TransactionsModel.getNewId();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return id;
    }
}
