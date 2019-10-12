package databaseManagement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseManager {
    public static String user ="root";
    public static String pass ="niloynils7";


    public static Connection GetConnection() throws SQLException {
        Connection connection = null;
        try {
            //Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinefood", user, pass);
            System.out.println("DataBase connected");
        }
        catch (Exception e) {
            System.out.println("database ashe na ");
            //
        }
        return connection;
    }
}
