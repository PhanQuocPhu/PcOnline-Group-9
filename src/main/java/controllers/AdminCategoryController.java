package controllers;

import com.github.slugify.Slugify;
import entity.Categories;
import models.CategoriesModel;
import services.helper;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AdminCategoryController", urlPatterns = "/admin/category/*")
@MultipartConfig
public class AdminCategoryController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        switch (path) {
            case "/add":
                addCategory(request, response);
                break;
            case "/delete":
                deleteCategory(request, response);
                break;
           /* case "/update":
                updateCategory(request, response);
                break;*/
            /*default:
                ServletUtils.redirect("/notfound", request, response);
                break;*/
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getPathInfo();
        if (path == null || path.equals("/")) {
            path = "/index";
        }
        switch (path) {
            case "/index":
                List<Categories> list = null;
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
        String cSlug = helper.createSlug(cName);
        String cIcon = request.getParameter("cIcon");
        Byte cActive = Byte.parseByte(request.getParameter("cActive"));
        Byte cHome = Byte.parseByte(request.getParameter("cHome"));
        /*System.out.println(cName);*/
        CategoriesModel.create(cName, cSlug, cIcon, cActive, cHome);
        ServletUtils.forward("/views/Admin/category/form.jsp", request, response);
    }

    private void deleteCategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        /*System.out.println(cName);*/
        CategoriesModel.delete(id);
        response.sendRedirect("/admin/category/");
    }




}
