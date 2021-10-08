package models;

import entity.Admins;

import java.sql.SQLException;

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
        updateCate(id, cName, cSlug, cIcon, cActive, cHome);
        //deleteCate(23);


        //CreateAdmin(name, email, password);

        /*CheckAdmin(email, password);*/


        //Thua
        /*TestCateImp();*/
    }


    public static void CreateAdmin(String name, String email, String password) {
        Admins admins = AdminsModel.create(name, email, password);
        System.out.println("Admin:" + " " + name + " " +
                "Email:" + " " + email + " " +
                "Password:" + " " + password + " is added to the database!!!!!");
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

    public static void CheckAdmin(String email, String password) {
        Admins admins = AdminsModel.get(email);
        System.out.println(admins.getEmail() + "||" + AdminsModel.checkPass("123", admins.getPassword()));
    }

}
