package dao;

import models.CategoriesEntity;
import utils.ConnectionUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoriesDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<CategoriesEntity> getListCategories() {
        try {
            String sql = "select * from categories";
            conn = new ConnectionUtil().openConn();     //Mở kết nối
            ps = conn.prepareStatement(sql);            //Ném lệnh query
            rs = ps.executeQuery();                     //Thực thi query trả về rs
            List<CategoriesEntity> list = new ArrayList<>();
            while (rs.next()) {
                CategoriesEntity cate = new CategoriesEntity(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getByte(6), rs.getInt(7),
                        rs.getString(8), rs.getString(9), rs.getString(10), rs.getByte(11),
                        rs.getTimestamp(12), rs.getTimestamp(13));
                list.add(cate);
            }

            return list;
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }
}
