package controllers;

import com.google.gson.Gson;
import entity.Categories;
import entity.Products;
import models.CategoriesModel;
import models.ProductsModel;
import services.helper;
import utils.ServletUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AdminProductController", value = "/admin/product/*")
@MultipartConfig(
        fileSizeThreshold = 2 * 1024 * 1024,
        maxFileSize = 50 * 1024 * 1024,
        maxRequestSize = 50 * 1024 * 1024
)
public class AdminProductController extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String path = request.getPathInfo();
        switch (path) {
            case "/add":
            case "/update":
            case "/delete":
                try {
                    manageProduct(request, response, path);
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
        List<Products> list = null;
        List<Categories> listc = null;
        try {
            list = ProductsModel.getAll();
            listc = CategoriesModel.getAll();
        } catch (SQLException throwables) {
            System.out.println("Lỗi lấy data rồi :D");
            throwables.printStackTrace();
        }
        if ("/index".equals(path)) {
            request.setAttribute("products", list);
            request.setAttribute("categories", listc);
            request.setAttribute("proActive", "active");
            ServletUtils.forward("/views/Admin/product/index.jsp", request, response);

        } else if ("/update".equals(path)) {
            try {
                int id = Integer.parseInt(request.getParameter("id"));
                System.out.println(id);
                Products pro = ProductsModel.getById(id);
                String json = new Gson().toJson(pro);
                response.setContentType("application/json");
                response.getWriter().write(json);
                /*System.out.println(json);*/
                request.setAttribute("categories", listc);
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
        } else {
            ServletUtils.redirect("/notfound", request, response);
        }
    }

    private void manageProduct(HttpServletRequest request, HttpServletResponse response, String path) throws ServletException, IOException, SQLException {
        int id = 0;
        if (request.getParameter("id") != null)
            id = Integer.parseInt(request.getParameter("id"));
        String proName = request.getParameter("proName");
        String proSlug = helper.createSlug(proName);

        int proCategoryId = 0;
        if (request.getParameter("proCategoryId") != null)
            proCategoryId = Integer.parseInt(request.getParameter("proCategoryId"));

        byte proNumber = 0;
        if (request.getParameter("proNumber") != null)
            proNumber = Byte.parseByte(request.getParameter("proNumber"));

        byte proSale = 0;
        if (request.getParameter("proSale") != null)
            proSale = Byte.parseByte(request.getParameter("proSale"));

        byte proActive = 0;
        if (request.getParameter("proActive") != null)
            proActive = Byte.parseByte(request.getParameter("proActive"));

        byte proHot = 0;
        if (request.getParameter("proHot") != null)
            proHot = Byte.parseByte(request.getParameter("proHot"));

        int proPrice = 0;
        if (request.getParameter("proPrice") != null)
            proPrice = Integer.parseInt(request.getParameter("proPrice"));
        int proAuthorId = 1;
        String proDescription = request.getParameter("proDescription");
        String proContent = request.getParameter("proContent") ;
        String proAvatar = "";

        switch (path) {
            case "/add":
                if(!request.getPart("proAvatar").getSubmittedFileName().equals(""))
                    /*System.out.println("Không có file");*/
                    proAvatar = upload_image(request);
                ProductsModel.create(proName, proSlug, proCategoryId, proPrice, proAuthorId, proSale, proActive, proHot,
                        proDescription, proAvatar, proContent, proNumber);
                response.sendRedirect("/admin/product/");
                break;
            case "/update":
                Products pro = ProductsModel.getById(id);
                if( request.getPart("proAvatar").getSubmittedFileName() != "")
                    /*System.out.println("Không có file");*/
                    proAvatar = upload_image(request);
                else {
                    proAvatar = pro.getProAvatar();
                    System.out.println(proAvatar);
                }
                ProductsModel.update(id, proName, proSlug, proCategoryId, proPrice, proAuthorId, proSale, proActive, proHot,
                        proDescription, proAvatar, proContent, proNumber);
                response.sendRedirect("/admin/product/");
                break;
            case "/delete":
                ProductsModel.delete(id);
                response.sendRedirect("/admin/product/");
                break;
        }

    }

    private String upload_image(HttpServletRequest request) throws ServletException, IOException {
        Part imgPart = request.getPart("proAvatar");
        String uploadFolder = request.getServletContext().getRealPath("/public/images");
        Path uploadPath = Paths.get(uploadFolder);
        if (!Files.exists(uploadPath)) {
            Files.createDirectories(uploadPath);
        }
        String imgName = Path.of(imgPart.getSubmittedFileName()).getFileName().toString();

        /*System.out.println(imgName);*/
       /* try {
            File file;
            FileOutputStream fos = new FileOutputStream(uploadFolder);
            InputStream is = imgPart.getInputStream();
            byte[] data = new byte[is.available()];
            is.read(data);
            fos.write(data);
            fos.close();
        } catch (Exception e) {
            e.printStackTrace();
        }*/
        imgPart.write(Paths.get(uploadPath.toString(), imgName).toString());
        return imgName;

    }
}
