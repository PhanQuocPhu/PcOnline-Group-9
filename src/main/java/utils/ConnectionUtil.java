package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionUtil {
    static private final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    static private final String HOST_NAME = "localhost";
    static private final String DB_NAME = "pconlineweb";
    static private final String PORT = ":3306/";

    static private final String USER = "root";
    static private final String PASS = "";

    static private final String DB_URL = "jdbc:mysql://" + HOST_NAME + PORT + DB_NAME;


    public static Connection openConn() {
        try {

            Class.forName(JDBC_DRIVER);

            return DriverManager.getConnection(DB_URL, USER, PASS);
            /*System.out.println("SUCCESS.......");*/
        } catch (SQLException se) {
            System.out.println("KET NOI DATABASE THAT BAI........");
            se.printStackTrace();
        } catch (Exception e) {
            System.out.println("HA HA........");
            e.printStackTrace();
        }
        return null;
    }

    public static void main(String[] args) {
        Connection connection = ConnectionUtil.openConn();
    }

}
