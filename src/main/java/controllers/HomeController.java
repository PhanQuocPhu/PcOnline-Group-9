package controllers;

import entity.Categories;
import entity.Products;
import models.CategoriesModel;
import models.ProductsModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


@WebServlet(name = "HomeController", urlPatterns = "/home")
public class HomeController extends FrontEndController {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Categories> listc = getAllCate();
        
        request.setAttribute("categories", listc);
        ServletUtils.forward("/views/Guest/index.jsp", request, response);
    }


}
