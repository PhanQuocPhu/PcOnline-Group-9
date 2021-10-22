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
                try {
                    manageCategory(request, response, path);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
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
                request.setAttribute("catActive", "active");
                ServletUtils.forward("/views/Admin/category/index.jsp", request, response);
                break;
            case "/update":
                try {
                    int id = Integer.parseInt(request.getParameter("id"));
                    String URI = request.getRequestURI() + "?id=" + id;
                    System.out.println(id);
                    Categories cat = CategoriesModel.getById(id);
                    request.setAttribute("category", cat);
                    request.setAttribute("action", URI);
                    ServletUtils.forward("/views/Admin/category/form.jsp", request, response);
                } catch (SQLException throwables) {
                    throwables.printStackTrace();
                }
                break;
            case "/add":
                String URI = request.getRequestURI();
                //System.out.println(URI);
                request.setAttribute("action", URI);
                ServletUtils.forward("/views/Admin/category/form.jsp", request, response);
                break;
            default:
                ServletUtils.redirect("/notfound", request, response);
                break;
        }
    }

    private void manageCategory(HttpServletRequest request, HttpServletResponse response, String path) throws IOException, SQLException {
        int id = 0;
        if (request.getParameter("id") != null)
            id = Integer.parseInt(request.getParameter("id"));
        String cName = request.getParameter("cName");
        String cSlug = helper.createSlug(cName);

        byte cActive = 0;
        if (request.getParameter("cActive") != null)
            cActive = Byte.parseByte(request.getParameter("cActive"));

        byte cHome = 0;
        if (request.getParameter("cHome") != null)
            cHome = Byte.parseByte(request.getParameter("cHome"));

        Categories cat = new Categories();
        Categories catUp = CategoriesModel.getById(id);
        switch (path) {
            case "/add":
                cat.setcName(cName);
                cat.setcSlug(cSlug);
                cat.setcActive(cActive);
                cat.setcHome(cHome);
                CategoriesModel.create(cat);
                response.sendRedirect("/admin/category/");
                break;
            case "/update":
                catUp.setcName(cName);
                catUp.setcSlug(cSlug);
                catUp.setcActive(cActive);
                catUp.setcHome(cHome);
                System.out.println(cName);
                CategoriesModel.update(catUp);
                response.sendRedirect("/admin/category/");
                break;
            case "/delete":
                CategoriesModel.delete(catUp);
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
