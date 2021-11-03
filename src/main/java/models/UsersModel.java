package models;

import entity.Users;
import org.hibernate.Session;
import org.hibernate.Transaction;
import utils.HibernateUtil;

import java.sql.SQLException;
import java.util.List;

public class UsersModel {
    public static Session session = HibernateUtil.openSession();
    //Lấy Id mới
    public static int getLastId() throws SQLException {
        String hql = "select max(id) from Users ";
        if (UsersModel.getAll().size() != 0) {
            return session.createQuery(hql, Integer.class).uniqueResult() + 1;
        } else {
            return 0;
        }
    }

    //Lấy hết
    public static List<Users> getAll() throws SQLException {
        final String hql = "FROM Users order by id";
        return session.createQuery(hql, Users.class).list();
    }

    //Lấy theo ID
    public static Users getById(int id) throws SQLException {
        session.clear();
        return (Users) session.get(Users.class, id);
    }

    //Thêm
    public static void create(Users entity) {
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
    public static void update(Users entity) {
        session.clear();
        // TODO Auto-generated method stub
        Transaction t = session.beginTransaction();
        try {
            session.update(entity);
            t.commit();
        } catch (Exception e) {
            t.rollback();
        }
    }

    //Xóa
    public static void delete(Users entity) {
        session.clear();
        Transaction t = session.beginTransaction();
        try {
            session.delete(entity);
            t.commit();
        } catch (Exception e) {
            t.rollback();
        }
    }
}
