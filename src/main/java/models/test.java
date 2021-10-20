package models;

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
            String hql = "from Products";
            List<Products> products = session.createQuery(hql).list();
            for (Products pro : products) {
                System.out.println("Id: " + pro.getId() + " || " + "Name: " + pro.getProName() + " || " + pro.getProSlug());
            }
        }
    }

    public static void getProByCateId(int proCategoryId) throws SQLException {
        ProductsModel productsModel = new ProductsModel();
        List<Products> list = ProductsModel.getAll();
        System.out.println("success");
        for (Products pro : list) {
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
        CategoriesModel.create(cName, cSlug, cIcon, cActive, cHome);
        System.out.println("Success!!!!");
    }

    public static void updateCate(int id, String cName, String cSlug, String cIcon, Byte cActive, Byte cHome) {
        CategoriesModel.update(id, cName, cSlug, cIcon, cActive, cHome);
        System.out.println("Success!!!!");
    }

    public static void deleteCate(int id) {
        CategoriesModel.delete(id);
        System.out.println("Success!!!!");
    }

    public static void createPro() {
        String proName = "test";
        String proSlug = "test";
        int proCategoryId = 10;
        int proPrice = 1;
        int proAuthorId = 1;
        byte proSale = 10;
        byte proActive = 1;
        byte proHot = 1;
        String proDescription = "test";
        String proAvatar = "test";
        String proContent = "test";
        byte proNumber = 0;
        ProductsModel.create(proName, proSlug, proCategoryId, proPrice, proAuthorId, proSale, proActive, proHot,
                proDescription, proAvatar, proContent, proNumber);
        System.out.println("Thêm sản phẩm thành công!!!!");
    }


}
