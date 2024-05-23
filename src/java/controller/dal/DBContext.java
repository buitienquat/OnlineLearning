package controller.dal;

import java.sql.*;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;

public class DBContext {

    protected Connection connection;//kết nối giữa ứng dụng Java và cơ sở dữ liệu
//    protected PreparedStatement statement;//thực thi các câu lệnh SQL trước khi thực sự thực thi
//    protected ResultSet resultSet;// giống như 1 cái bảng , như sql manager
    /**
     * Lấy kết nối
     *
     * @return kết nối hoặc null
     * @throws ClassNotFoundException
     */
    public Connection getConnection() {

        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String url = "jdbc:sqlserver://localhost:1433;databaseName=OnlineLearning";
            String user = "sa";
            String password = "123";
            connection = DriverManager.getConnection(url, user, password);
            return connection;
        } catch (SQLException | ClassNotFoundException e) {
            System.err.println("Error "+e.getMessage()+" at DB Context");
            return null;
        }
    }

    public static void main(String[] args) {
        DBContext test = new DBContext();
        test.connection = test.getConnection();
        System.out.println(test.connection);
    }
}
