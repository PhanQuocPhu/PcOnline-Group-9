package models;

import entity.Admins;
import org.hibernate.Query;
import org.mindrot.jbcrypt.BCrypt;
import org.sql2o.Connection;
import utils.DbUtil;

import java.sql.SQLException;
import java.time.Instant;

public class AdminsModel {

    //Lấy 1 hàng
    /*public static Admins get(String id) throws SQLException {
        final String sql = "select * from Admins where id=:id";
        try ( org.sql2o.Connection con = DbUtil.openConn() ){
            Admins a = con.createQuery(sql).addParameter("id", id).executeAndFetchFirst(Admins.class);
            con.close();
            return a;
        }
    }*/
    public static Admins get(String email) {
        String sql = "select * FROM Admins WHERE email =:email";
        Connection conn = DbUtil.openConn();
        return conn.createQuery(sql).addParameter("email", email).throwOnMappingFailure(false).executeAndFetchFirst(Admins.class);
    }

    //Create
    public static Admins create(String name, String email, String password){
        String sql = "select * FROM admins WHERE email =:email";
        Connection conn = DbUtil.openConn();
        Admins admin = conn.createQuery(sql).addParameter("email", email).throwOnMappingFailure(false).executeAndFetchFirst(Admins.class);
        if(admin != null)
        {
            System.out.println("Có dữ liệu r");
            return admin;
        } else
        {
            sql = "insert into admins (name, email, password) values (:name, :email, :password)";
        }
        Instant now = Instant.now();
        int id = conn.createQuery(sql)
                .addParameter("name", name)
                .addParameter("email", email)
                .addParameter("password", encryptPass(password))
                .executeUpdate().getKey(int.class);
        return admin;
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
