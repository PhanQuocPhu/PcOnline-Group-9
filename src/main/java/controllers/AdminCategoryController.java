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
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;

@WebServlet(name = "AdminCategoryController", urlPatterns = "/admin/category/*")
public class AdminCategoryController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/Add":
                addCategory(request, response);
                break;
           /* case "/Delete":
                deleteCategory(request, response);
                break;*/
            /*case "/Update":
                updateCategory(request, response);
                break;*/
            default:
                ServletUtils.redirect("/notfound", request, response);
                break;
        }
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
            case "/add":
                ServletUtils.forward("/views/Admin/category/form.jsp", request, response);
                break;
            /*case "/edit":
                int id = Integer.parseInt(request.getParameter("id"));
                Optional<Category> c = CategoryModel.findById(id);
                if (c.isPresent()) {
                    request.setAttribute("category", c.get());
                    ServletUtils.forward("/views/category/form.jsp", request, response);
                } else {
                    ServletUtils.redirect("/Admin/Category", request, response);
                }
                break;*/
            default:
                ServletUtils.redirect("/notfound", request, response);
                break;
        }
    }

    private void addCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cName = request.getParameter("cName");
        String cSlug = request.getParameter("cSlug");
        String cIcon = request.getParameter("cIcon");
        String cAvatar = request.getParameter("cAvatar");
        String cActive = request.getParameter("cActive");
        String cTotalProduct = request.getParameter("cTotalProduct");
        String cHome = request.getParameter("cHome");

        CategoriesEntity c = new CategoriesEntity();
        CategoriesModel.add(c);
        ServletUtils.forward("/views/Admin/category/form.jsp", request, response);
    }


}
