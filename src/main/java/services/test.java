package services;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import entity.*;
import models.*;
import org.apache.commons.lang3.RandomStringUtils;
import org.hibernate.Session;
import org.hibernate.Transaction;
import services.helper;
import utils.HibernateUtil;
import org.hibernate.query.Query;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.Collection;
import java.util.List;

public class test {
    public static void main(String[] args) throws SQLException {
        //createCate(cName, cSlug, cIcon, cActive, cHome);
        //updateCate(id, cName, cSlug, cIcon, cActive, cHome);
        //deleteCate(23);


        //CreateAdmin(name, email, password);

        /*CheckAdmin(email, password);*/


        //createPro();
        //getProByCateId(10);

        /*Categories cat = CategoriesModel.getById(10);
        System.out.println("Id: " + cat.getId() + " || " + "Name: " + cat.getcName());*/
        /*int cate = CategoriesModel.getLastId();
        System.out.println(cate);*/
        //getOrdersById(128);

        //testGetJson(10);
        //testCreateTrans();

        CreateUser();
    }
    public static void testCreateTrans() throws SQLException {
        Transactions transaction = new Transactions();
        Transactions trans = TransactionsModel.getById(128);
        int id = TransactionsModel.getNewId();
        System.out.println(id);
        String address = "asd";
        String phone = "123";
        String note = "qweqw e";
        Users user = UsersModel.getById(5);
        Timestamp timestamp = helper.getCurrentTimeStamp();
        transaction.setId(id);
        transaction.setUsersByTruserid(user);
        transaction.setTraddress(address);
        transaction.setTrphone(phone);
        transaction.setTrtotal(1000);
        transaction.setTrstatus((byte) 1);
        transaction.setTrpayment((byte) 0);
        transaction.setTrnote(note);
        //transaction.setCreatedat(timestamp);
        //transaction.setUpdatedat(timestamp);
        trans.setTrpayment((byte) 0);
        TransactionsModel.update(trans);
    }
    public static void CreateUser() throws SQLException {
        Users user = new Users();
        int id = UsersModel.getNewId();
        System.out.println(id);
        String email = "test1@gmail.com";
        String name = "testBot1";
        String pass = "123";
        Timestamp timestamp = helper.getCurrentTimeStamp();
        user.setId(id);
        user.setEmail(email);
        user.setName(name);
        user.setPassword(pass);
        user.setCreatedAt(timestamp);
        user.setUpdatedAt(timestamp);
        UsersModel.create(user);
    }

    public static void getOrdersById(int id) throws SQLException {
        List<Orders> listor = TransactionsModel.getById(id).getOrdersById();
        System.out.println(listor.size());
        for (Orders order : listor) {
            System.out.println("Id: " + order.getId() + " || " + "Name: " + order.getProductsByOrproductid().getProname());
        }
    }
    public static void testGetJson(int id) throws SQLException {
        Categories cate = CategoriesModel.getById(id);
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
            System.out.println("Id: " + pro.getId() + " || " + "Name: " + pro.getProname() + " || " + pro.getProslug());
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

    public static void getCate() throws SQLException {
        List<Categories> list = CategoriesModel.getAll();
        System.out.println("Success!!!!");
        for (Categories cat : list) {
            System.out.println("Id: " + cat.getId() + " || " + "Name: " + cat.getCname() + " || " + cat.getCslug());
        }
    }

    public static void updateCate() {
        System.out.println("Success!!!!");
    }







}