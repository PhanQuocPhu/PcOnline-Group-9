package controllers;

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
            case "/update":
            case "/delete":
                manageCategory(request, response, path);
                break;
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
        if ("/index".equals(path)) {
            List<Categories> list = null;
            try {
                list = CategoriesModel.getAll();
            } catch (SQLException throwables) {
                System.out.println("Lỗi lấy data rồi :D");
                throwables.printStackTrace();
            }
            request.setAttribute("categories", list);
            request.setAttribute("catActive", "active");
            ServletUtils.forward("/views/Admin/category/index.jsp", request, response);
        } else {
            ServletUtils.redirect("/notfound", request, response);
        }
    }

    private void manageCategory(HttpServletRequest request, HttpServletResponse response, String path) throws ServletException, IOException {
        int id = 0;
        if (request.getParameter("id") != null)
            id = Integer.parseInt(request.getParameter("id"));
        String cName = request.getParameter("cName");
        String cSlug = helper.createSlug(cName);
        String cIcon = request.getParameter("cIcon");
        byte cActive = 0;
        if (request.getParameter("cActive") != null)
            cActive = Byte.parseByte(request.getParameter("cActive"));
        byte cHome = 0;
        if (request.getParameter("cHome") != null)
            cHome = Byte.parseByte(request.getParameter("cHome"));
        switch (path){
            case "/add":
                CategoriesModel.create(cName, cSlug, cIcon, cActive, cHome);
                response.sendRedirect("/admin/category/");
                break;
            case "/update":
                CategoriesModel.update(id, cName, cSlug, cIcon, cHome, cActive);
                response.sendRedirect("/admin/category/");
                break;
            case "/delete":
                CategoriesModel.delete(id);
                response.sendRedirect("/admin/category/");
                break;
        }

    }


}
