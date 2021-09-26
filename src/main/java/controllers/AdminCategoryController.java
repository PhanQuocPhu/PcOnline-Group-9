package controllers;

import entity.CategoriesEntity;
import models.CategoriesModel;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

@WebServlet(name = "AdminCategoryController", urlPatterns = "/admin/category/*")
public class AdminCategoryController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/index";
        }
        switch (path) {
            case "/index":
                List<CategoriesEntity> list = null;
                try {
                    list = CategoriesModel.getAll();
                } catch (SQLException throwables) {
                    System.out.println("Lỗi lấy data rồi :D");
                    throwables.printStackTrace();
                }
                request.setAttribute("categories", list);
                ServletUtils.forward("/views/Admin/category/index.jsp", request, response);
                break;
            /*case "/add":
                ServletUtils.forward("/views/category/Add.jsp", request, response);
                break;
            case "/edit":
                int id = Integer.parseInt(request.getParameter("id"));
                Optional<Category> c = CategoryModel.findById(id);
                if (c.isPresent()) {
                    request.setAttribute("category", c.get());
                    ServletUtils.forward("/views/category/Edit.jsp", request, response);
                } else {
                    ServletUtils.redirect("/Admin/Category", request, response);
                }
                break;*/
            default:
                ServletUtils.redirect("/NotFound", request, response);
                break;
        }
    }
}
