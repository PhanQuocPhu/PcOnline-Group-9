package models;

import entity.Admins;
import entity.Categories;
import entity.Products;
import utils.DbUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class CategoriesModel {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //Test
    /*public List<Categories> getListCategoriesDao() {
        try {
            String sql = "select * from categories";
            conn = new ConnectionUtil().openConn();     //Mở kết nối
            ps = conn.prepareStatement(sql);            //Ném lệnh query
            rs = ps.executeQuery();                     //Thực thi query trả về rs
            List<Categories> list = new ArrayList<>();
            while (rs.next()) {
                Categories cate = new Categories(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getByte(6), rs.getInt(7),
                        rs.getString(8), rs.getString(9), rs.getString(10), rs.getByte(11),
                        rs.getTimestamp(12), rs.getTimestamp(13));
                list.add(cate);
            }

            return list;
        } catch (SQLException throwables) {
            System.out.println("Lỗi trong CategoriesDAO");
            throwables.printStackTrace();
        }
        return null;
    }*/

    //Sql2o - Lấy hết
    public static List<Categories> getAll() throws SQLException {
        final String sql = "select * from categories";
        try ( org.sql2o.Connection con = DbUtil.openConn() ){
            return con.createQuery(sql)/*.throwOnMappingFailure(false)*/.executeAndFetch(Categories.class);
        }
    }
    //Sql2o - Thêm
    public static Categories create(String cName, String cSlug, String cIcon, Byte cActive, Byte cHome) {
        String sql = "select * FROM categories WHERE cName =:cName";

        try (org.sql2o.Connection conn = DbUtil.openTran()) {
            Categories category = conn.createQuery(sql).addParameter("cName", cName).throwOnMappingFailure(false).executeAndFetchFirst(Categories.class);
            if(category != null)
            {
                System.out.println("Tên danh mục đã tồn tại!!!!");
                return null;
            } else {
                sql = "INSERT INTO categories (cName, cSlug, cIcon, cActive, cHome) VALUES (:cName, :cSlug, :cIcon, :cActive, :cHome)";
            }
            conn.createQuery(sql)
                    .addParameter("cName", cName)
                    .addParameter("cSlug", cSlug)
                    .addParameter("cIcon", cIcon)
                    .addParameter("cActive", cActive)
                    .addParameter("cHome", cHome)
                    .executeUpdate();
            conn.commit();
            return null;
        }
    }
    public static Categories update(Integer id, String cName, String cSlug, String cIcon, Byte cActive, Byte cHome) {
        String sql = "select * FROM categories WHERE cName =:cName and id!=:id";
        try (org.sql2o.Connection conn = DbUtil.openTran()) {
            Categories category = conn.createQuery(sql)
                    .addParameter("id", id)
                    .addParameter("cName", cName)
                    .throwOnMappingFailure(false).executeAndFetchFirst(Categories.class);
            if(category != null)
            {
                System.out.println("Tên danh mục đã tồn tại!!!!");
                return null;
            } else {
                sql = "update categories set cName=:cName, cSlug=:cSlug, cIcon=:cIcon, cActive=:cActive, cHome=:cHome  where id =:id";
            }
            conn.createQuery(sql)
                    .addParameter("id", id)
                    .addParameter("cName", cName)
                    .addParameter("cSlug", cSlug)
                    .addParameter("cIcon", cIcon)
                    .addParameter("cActive", cActive)
                    .addParameter("cHome", cHome)
                    .executeUpdate();
            conn.commit();
            return null;
        }
    }
    //Sql2o - Lấy theo ID
    public static Categories getById(int id) throws SQLException {
        final String sql = "select * from categories where id=:id";
        try ( org.sql2o.Connection con = DbUtil.openConn() ){
            return con.createQuery(sql)/*.throwOnMappingFailure(false)*/.addParameter("id", id).executeAndFetchFirst(Categories.class);
        }
    }

    //Sql2o - Xóa
    public static Categories delete(int id) {
        String sql = "select * FROM categories WHERE id =:id";

        try (org.sql2o.Connection conn = DbUtil.openConn()) {
            Categories category = conn.createQuery(sql).addParameter("id", id).throwOnMappingFailure(false).executeAndFetchFirst(Categories.class);
            if(category == null)
            {
                System.out.println("Tên danh mục không tồn tại!!!!");
                return null;
            } else {
                sql = "DELETE from categories where id=:id";
            }
            conn.createQuery(sql)
                    .addParameter("id", id)
                    .executeUpdate();
            return null;
        }
    }
}
