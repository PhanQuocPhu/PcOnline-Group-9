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

        String cName = "cName";
        String cSlug = "cSlug";
        String cIcon = "cIcon";
        Byte cActive = 1;
        Byte cHome = 1;

        CreateCategory(cName, cSlug, cIcon, cActive, cHome);
        //CreateAdmin(name, email, password);

        /*CheckAdmin(email, password);*/

        //deleteCate(23);
        //Thua
        /*TestCateImp();*/
    }


    public static void CreateAdmin(String name, String email, String password) {
        Admins admins = AdminsModel.create(name, email, password);
        System.out.println("Admin:" + " " + name + " " +
                "Email:" + " " + email + " " +
                "Password:" + " " + password + " is added to the database!!!!!");
    }

    public static void CreateCategory(String cName, String cSlug, String cIcon, Byte cActive, Byte cHome) {
        CategoriesModel.create(cName, cSlug, cIcon, cActive, cHome);
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
