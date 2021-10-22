package models;

import com.google.gson.Gson;
import entity.Admins;
import entity.Categories;
import entity.Products;
import org.hibernate.Session;
import utils.HibernateUtil;

import java.sql.SQLException;
import java.util.List;

public class test {
    public static void main(String[] args) throws SQLException {
        /*CategoriesModel categoriesModel = new CategoriesModel();
        List<Categories> list = categoriesModel.getAll();
        *//*System.out.println("success");*//*
        for (Categories cate : list) {
            System.out.println("Id: " + cate.getId() + " || " + "Name: " + cate.getcName() + " || " + cate.getcSlug());
        }*/
        String name = "PQP";
        String email = "admin@gmail.com";
        String password = "123";

        int id = 37;
        String cName = "cName";
        String cSlug = "cSlug";
        String cIcon = "cIcon";
        Byte cActive = 0;
        Byte cHome = 0;

        //createCate(cName, cSlug, cIcon, cActive, cHome);
        //updateCate(id, cName, cSlug, cIcon, cActive, cHome);
        //deleteCate(23);


        //CreateAdmin(name, email, password);

        /*CheckAdmin(email, password);*/


        //createPro();
        //getProByCateId(10);

        /*Categories cat = CategoriesModel.getById(10);
        System.out.println("Id: " + cat.getId() + " || " + "Name: " + cat.getcName());*/
        try (Session session = HibernateUtil.openSession()) {
            String hql = "from Categories ";
            /*List<Products> Product  = ProductsModel.getByCId(10);
            System.out.println("success");
            for (Products pro : Product) {
                System.out.println("Id: " + pro.getId() + " || " + "Name: " + pro.getProName() + " || " + pro.getProSlug());
            }*/
          /*  Products pro = ProductsModel.getById(8);
            System.out.println("Id: " + pro.getId() + " || " + "Name: " + pro.getProName() + " || " + pro.getProSlug());*/
        }
        getProByCateId(10);
    }

    public static void testGetJson(int id) throws SQLException {
        Categories cate = CategoriesModel.getById(id);
        System.out.println(cate.getId() + " || " + cate.getcName());
        String json = new Gson().toJson(cate);
        System.out.println(json);
    }

    public static void getProByCateId(int proCategoryId) throws SQLException {
        List<Products> listp = null;
        try {
            listp = ProductsModel.getByCId(proCategoryId);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        System.out.println("success");
        for (Products pro : listp) {
            System.out.println("Id: " + pro.getId() + " || " + "Name: " + pro.getProName() + " || " + pro.getProSlug());
        }
    }

    public static void CreateAdmin(String name, String email, String password) {
        Admins admins = AdminsModel.create(name, email, password);
        System.out.println("Admin:" + " " + name + " " +
                "Email:" + " " + email + " " +
                "Password:" + " " + password + " is added to the database!!!!!");
    }

    public static void CheckAdmin(String email, String password) {
        Admins admins = AdminsModel.get(email);
        System.out.println(admins.getEmail() + "||" + AdminsModel.checkPass("123", admins.getPassword()));
    }

    public static void createCate(String cName, String cSlug, String cIcon, Byte cActive, Byte cHome) {

        System.out.println("Success!!!!");
    }

    public static void updateCate() {
        System.out.println("Success!!!!");
    }


    public static void createPro() {
        System.out.println("Thêm sản phẩm thành công!!!!");
    }


}
