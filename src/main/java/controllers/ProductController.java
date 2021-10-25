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

@WebServlet(name = "ProductController", value = "/home/product/*")
public class ProductController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String path = request.getPathInfo();

        if (path == null || path.equals("/")) {
            ServletUtils.redirect("/home", request, response);
        }
        List<Categories> listc = getCate();
        List<Products> listpc  = null;
        Categories cat = new Categories();
        switch (path) {
            case "/list":
                int cid = Integer.parseInt(request.getParameter("cid"));
                listpc = getPro(cid);
                cat = getCateById(cid);
                request.setAttribute("categories", listc);
                request.setAttribute("products", listpc);
                request.setAttribute("category", cat);
                ServletUtils.forward("/views/Guest/product/index.jsp", request, response);
                break;
            case "/detail":
                int id = Integer.parseInt(request.getParameter("id"));
                Products pro  = getProById(id);
                cat = getCateById(pro.getCategoriesByProcategoryid().getId());
                listpc = getPro(pro.getCategoriesByProcategoryid().getId());
                request.setAttribute("categories", listc);
                request.setAttribute("products", listpc);
                request.setAttribute("category", cat);
                request.setAttribute("product", pro);
                ServletUtils.forward("/views/Guest/product/proDetail.jsp", request, response);
                break;
            default:
                ServletUtils.redirect("/home", request, response);
                break;
        }
    }
    private List<Categories> getCate(){
        List<Categories> list = null;
        try {
            list = CategoriesModel.getAll();
        } catch (SQLException throwables) {
            System.out.println("Lỗi lấy data rồi :D");
            throwables.printStackTrace();
        }
        return list;
    }
    private List<Products> getPro(int cid){
        List<Products> list = null;
        try {
            list = ProductsModel.getByCId(cid);
        } catch (SQLException throwables) {
            System.out.println("Lỗi lấy data rồi :D");
            throwables.printStackTrace();
        }
        return list;
    }
    private Categories getCateById(int id){
        Categories cat = new Categories();
        try {
            cat = CategoriesModel.getById(id);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return cat;
    }
    private Products getProById(int id){
        Products pro = new Products();
        try {
            pro = ProductsModel.getById(id);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return pro;
    }
}
