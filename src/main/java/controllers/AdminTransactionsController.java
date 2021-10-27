package controllers;

import entity.Categories;
import entity.Orders;
import entity.Products;
import entity.Transactions;
import models.CategoriesModel;
import models.OrdersModel;
import models.ProductsModel;
import models.TransactionsModel;
import utils.ServletUtils;

import javax.persistence.criteria.Order;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AdminTransactionsController", value = "/admin/transaction/*")
public class AdminTransactionsController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/index";
        }
        List<Transactions> list = getAllTran();

        switch (path) {
            case "/index":
                request.setAttribute("transactions", list);
                request.setAttribute("tranActive", "active");
                ServletUtils.forward("/views/Admin/transaction/index.jsp", request, response);
                break;
            case "/update":
                try {
                    int id = Integer.parseInt(request.getParameter("id"));
                    String URI = request.getRequestURI() + "?id=" + id;
                    Products pro = ProductsModel.getById(id);
                    request.setAttribute("product", pro);
                    request.setAttribute("action", URI);
                    ServletUtils.forward("/views/Admin/transaction/form.jsp", request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "/add":
                String URI = request.getRequestURI();
                //System.out.println(URI);
                request.setAttribute("action", URI);
                ServletUtils.forward("/views/Admin/transaction/form.jsp", request, response);
                break;
            default:
                ServletUtils.redirect("/notfound", request, response);
                break;
        }
    }
    private void manageTransaction(HttpServletRequest request, HttpServletResponse response, String path){

    }

    private List<Transactions> getAllTran(){
        List<Transactions> list = null;
        try {
            list = TransactionsModel.getAll();
        } catch (SQLException throwables) {
            System.out.println("Lỗi lấy data rồi :D");
            throwables.printStackTrace();
        }
        return list;
    }
    private Orders getOrderByTrid(int id){
        Orders order = new Orders();
        try {
            order = OrdersModel.getById(id);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return order;
    }
}
