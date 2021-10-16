package controllers;

import com.google.gson.Gson;
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
import javax.servlet.http.Part;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AdminCategoryController", urlPatterns = "/admin/category/*")
@MultipartConfig(
        fileSizeThreshold = 2 * 1024 * 1024,
        maxFileSize = 50 * 1024 * 1024,
        maxRequestSize = 50 * 1024 * 1024
)
public class AdminCategoryController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
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
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
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
        } else if ("/update".equals(path)){
            try {
                int id = Integer.parseInt(request.getParameter("id"));
                System.out.println(id);
                Categories cat = CategoriesModel.getById(id);
                String json = new Gson().toJson(cat);
                response.setContentType("application/json");
                response.getWriter().write(json);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
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
        String cIcon = "";
        byte cActive = 0;
        if (request.getParameter("cActive") != null)
            cActive = Byte.parseByte(request.getParameter("cActive"));
        byte cHome = 0;
        if (request.getParameter("cHome") != null)
            cHome = Byte.parseByte(request.getParameter("cHome"));
        switch (path) {
            case "/add":
                CategoriesModel.create(cName, cSlug, cIcon, cActive, cHome);
                response.sendRedirect("/admin/category/");
                break;
            case "/update":
                CategoriesModel.update(id, cName, cSlug, cIcon, cActive, cHome);
                response.sendRedirect("/admin/category/");
                break;
            case "/delete":
                CategoriesModel.delete(id);
                response.sendRedirect("/admin/category/");
                break;
        }
    }

    private String upload_image(HttpServletRequest request) throws ServletException, IOException {
        Part imgPart = request.getPart("cIcon");
        String uploadFolder = request.getServletContext().getRealPath("/public/images");
        Path uploadPath = Paths.get(uploadFolder);
        if (!Files.exists(uploadPath)) {
            Files.createDirectories(uploadPath);
        }
        String imgName = Path.of(imgPart.getSubmittedFileName()).getFileName().toString();

        imgPart.write(Paths.get(uploadPath.toString(), imgName).toString());
        return imgName;

    }


}
