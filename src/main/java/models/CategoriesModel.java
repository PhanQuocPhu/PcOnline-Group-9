package models;

import entity.Categories;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.hibernate.Session;
import utils.HibernateUtil;

import java.sql.SQLException;
import java.util.List;

public class CategoriesModel {
    private static final Session session = HibernateUtil.openSession();

    //Lấy Id cuối
    public static int getLastId() throws SQLException {
        String hql = "select max(id) from Categories";
        return session.createQuery(hql, Integer.class).uniqueResult();
    }
    //Lấy hết
    public static List<Categories> getAll() throws SQLException {
        String hql = "from Categories  order by id";
        return session.createQuery(hql, Categories.class).list();
    }
    //Lấy theo ID
    public static Categories getById(int id) throws SQLException {
        session.clear();
        return (Categories) session.get(Categories.class, id);
    }
    //Thêm
    public static void create(Categories entity){
        session.clear();
        Transaction t = session.beginTransaction();
        try {
            session.save(entity);
            t.commit();
        } catch (Exception e) {
            t.rollback();
        }
    }
    //Update
    public static void update(Categories entity) {
        session.clear();
        // TODO Auto-generated method stub
        Transaction t = session.beginTransaction();
        try {
            session.update(entity);
            t.commit();
        }catch(Exception e) {
            t.rollback();
        }
    }
    //Xóa
    public static void delete(Categories entity) {
        session.clear();
        Transaction t = session.beginTransaction();
        try {
            session.delete(entity);
            t.commit();
        }catch(Exception e) {
            t.rollback();
        }
    }
}
