package models;

import entity.Categories;
import entity.Products;
import utils.DbUtil;

import java.sql.SQLException;
import java.util.List;

public class ProductsModel {

    //Sql2o - Lấy hết
    public static List<Products> getAll() throws SQLException {
        final String sql = "select * from products";
        try ( org.sql2o.Connection con = DbUtil.openConn() ){
            return con.createQuery(sql)/*.throwOnMappingFailure(false)*/.executeAndFetch(Products.class);
        }
    }
    //Sql2o - Lấy hết theo cateID
    public static List<Products> getByCId(int proCategoryId) throws SQLException {
        final String sql = "select * from products where proCategoryId=:proCategoryId and proActive=1";
        try ( org.sql2o.Connection con = DbUtil.openConn() ){
            return con.createQuery(sql)/*.throwOnMappingFailure(false)*/.executeAndFetch(Products.class);
        }
    }

    //Sql2o - Thêm
    public static Products create(String proName, String proSlug,
                                  int proCategoryId, int proPrice, int proAuthorId,
                                  byte proSale, byte proActive, byte proHot,
                                  String proDescription, String proAvatar,String proContent,
                                  byte proNumber) {

        String sql = "select * FROM Products WHERE proName =:proName";

        try (org.sql2o.Connection conn = DbUtil.openTran()) {
            Products product = conn.createQuery(sql).addParameter("proName", proName).throwOnMappingFailure(false).executeAndFetchFirst(Products.class);
            if(product != null)
            {
                System.out.println("Sản phẩm đã tồn tại!!!!");
                return null;
            } else {
                sql = "INSERT INTO Products (proName, proSlug, proCategoryId, proPrice, proAuthorId, proSale, proActive, proHot," +
                            "proDescription, proAvatar, proContent, proNumber) " +
                        "VALUES (:proName, :proSlug, :proCategoryId, :proPrice, :proAuthorId, :proSale, :proActive, :proHot," +
                            ":proDescription, :proAvatar, :proContent, :proNumber) ";
            }
            conn.createQuery(sql)
                    .addParameter("proName", proName)
                    .addParameter("proSlug", proSlug)
                    .addParameter("proCategoryId", proCategoryId)
                    .addParameter("proPrice", proPrice)
                    .addParameter("proAuthorId", proAuthorId)
                    .addParameter("proSale", proSale)
                    .addParameter("proActive", proActive)
                    .addParameter("proHot", proHot)
                    .addParameter("proDescription", proDescription)
                    .addParameter("proAvatar", proAvatar)
                    .addParameter("proContent", proContent)
                    .addParameter("proNumber", proNumber)
                    .executeUpdate();
            conn.commit();
            return null;
        }
    }

    public static Products update(Integer id, String proName, String proSlug,
                                  int proCategoryId, int proPrice, int proAuthorId,
                                  byte proSale, byte proActive, byte proHot,
                                  String proDescription, String proAvatar,String proContent,
                                  byte proNumber) {
        String sql = "select * FROM Products WHERE proName =:proName and id!=:id";
        try (org.sql2o.Connection conn = DbUtil.openTran()) {
            Products product = conn.createQuery(sql)
                    .addParameter("id", id)
                    .addParameter("proName", proName)
                    .throwOnMappingFailure(false).executeAndFetchFirst(Products.class);
            if(product != null)
            {
                System.out.println("Tên danh mục đã tồn tại!!!!");
                return null;
            } else {
                sql = "update Products set proName=:proName, proSlug=:proSlug, proCategoryId=:proCategoryId, proPrice=:proPrice, " +
                        "proAuthorId=:proAuthorId, proSale=:proSale, proActive=:proActive, proHot=:proHot, proDescription=:proDescription, " +
                        "proAvatar=:proAvatar, proContent=:proContent, proNumber=:proNumber where id =:id";
            }
            conn.createQuery(sql)
                    .addParameter("id", id)
                    .addParameter("proName", proName)
                    .addParameter("proSlug", proSlug)
                    .addParameter("proCategoryId", proCategoryId)
                    .addParameter("proPrice", proPrice)
                    .addParameter("proAuthorId", proAuthorId)
                    .addParameter("proSale", proSale)
                    .addParameter("proActive", proActive)
                    .addParameter("proHot", proHot)
                    .addParameter("proDescription", proDescription)
                    .addParameter("proAvatar", proAvatar)
                    .addParameter("proContent", proContent)
                    .addParameter("proNumber", proNumber)
                    .executeUpdate();
            conn.commit();
            return null;
        }
    }
    //Sql2o - Lấy theo ID
    public static Products getById(int id) throws SQLException {
        final String sql = "select * from products where id=:id";
        try ( org.sql2o.Connection con = DbUtil.openConn() ){
            return con.createQuery(sql)/*.throwOnMappingFailure(false)*/.addParameter("id", id).executeAndFetchFirst(Products.class);
        }
    }


    //Sql2o - Xóa
    public static Products delete(int id) {
        String sql = "select * FROM Products WHERE id =:id";

        try (org.sql2o.Connection conn = DbUtil.openConn()) {
            Products product = conn.createQuery(sql).addParameter("id", id).throwOnMappingFailure(false).executeAndFetchFirst(Products.class);
            if(product == null)
            {
                System.out.println("Sản phẩm không tồn tại!!!!");
                return null;
            } else {
                sql = "DELETE from Products where id=:id";
            }
            conn.createQuery(sql)
                    .addParameter("id", id)
                    .executeUpdate();
            return null;
        }
    }
}
