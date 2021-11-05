package models;

import entity.Admins;
import entity.Users;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.mindrot.jbcrypt.BCrypt;
import org.sql2o.Connection;
import utils.DbUtil;
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
    //lấy email
    public static Users get(String email) {
        String sql = "select * FROM users WHERE email =:email";
        Connection conn = DbUtil.openConn();
        Users users = conn.createQuery(sql).addParameter("email", email).throwOnMappingFailure(false).executeAndFetchFirst(Users.class);
        /*conn.close();*/
        return users;
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
    //Mã hóa mật khẩu
    public static String encryptPass(String pass) {
        return BCrypt.hashpw(pass, BCrypt.gensalt());
    }
    //Kiểm tra mật khẩu
    public static boolean checkPass(String pass, String encryptedpass) {
        return BCrypt.checkpw(pass, encryptedpass);
    }
}
