package models;

import entity.Admins;
import entity.Categories;
import entity.Products;
import org.hibernate.query.Query;
import org.hibernate.Session;
import utils.DbUtil;
import utils.HibernateUtil;

import javax.persistence.EntityManager;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class CategoriesModel {
    private static final Session session = HibernateUtil.openSession();

    //Lấy hết
    public static List<Categories> getAll() throws SQLException {
        session.clear();
        String hql = "from Categories";
        return session.createQuery(hql, Categories.class).list();
    }
    //Lấy theo ID
    public static Categories getById(int id) throws SQLException {
        session.clear();
        return (Categories) session.get(Categories.class, id);
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
