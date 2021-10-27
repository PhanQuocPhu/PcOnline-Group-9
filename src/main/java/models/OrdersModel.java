package models;

import entity.Orders;
import entity.Products;
import org.hibernate.Session;
import org.hibernate.Transaction;
import utils.HibernateUtil;

import java.sql.SQLException;
import java.util.List;

public class OrdersModel {
    public static Session session = HibernateUtil.openSession();

    //Lấy Id cuối
    public static int getLastId() throws SQLException {
        String hql = "select max(id) from Orders";
        if (OrdersModel.getAll().size() != 0) {
            return session.createQuery(hql, Integer.class).uniqueResult();
        } else {
            return 0;
        }
    }
    //Lấy hết
    public static List<Orders> getAll() throws SQLException {
        final String hql = "FROM Orders order by id";
        return session.createQuery(hql, Orders.class).list();
    }
    //Lấy hết theo TranID
    public static List<Orders> getByTranId(int ortransactionid) throws SQLException {
        session.clear();
        final String hql = "FROM Orders WHERE transactionsByOrtransactionid.id=:ortransactionid";
        return  session.createQuery(hql, Orders.class).setParameter("ortransactionid", ortransactionid).list();
    }
    //Lấy theo ID
    public static Orders getById(int id) throws SQLException {
        session.clear();
        return (Orders) session.get(Orders.class, id);
    }
    //Thêm
    public static void create(Orders entity){
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
    public static void update(Orders entity) {
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
    public static void delete(Orders entity) {
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
