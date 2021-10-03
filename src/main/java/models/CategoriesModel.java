package models;

import entity.Categories;
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
    public static void add(Categories c) {
        final String sql = "INSERT INTO categories (cName, cSlug, cIcon, cAvatar, cActive, " +
                "cTotalProduct, cHome) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?)";
        try (org.sql2o.Connection con = DbUtil.openConn()) {
            con.createQuery(sql)
                    .addParameter("cName", c.getcName())
                    .addParameter("cSlug", c.getcSlug() )
                    .addParameter("cIcon", c.getcIcon())
                    .addParameter("cAvatar", c.getcAvatar())
                    .addParameter("cActive", c.getcActive())
                    .addParameter("cTotalProduct", c.getcTotalProduct())
                    .addParameter("cHome", c.getcHome())
                    .executeUpdate();
        }
    }
}
