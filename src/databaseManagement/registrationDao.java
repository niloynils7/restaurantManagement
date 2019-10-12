package databaseManagement;

import java.sql.*;

public class registrationDao {
    Connection connection;
    public registrationDao() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DatabaseManager.GetConnection();
        }
        catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }

    public int reg_insert(String phone, String firstname, String lastname, String address, String email, String password) throws SQLException {

        int res = 0;
        try {
            Statement statement = connection.createStatement();
            String query = "INSERT INTO registration(phone, firstname, lastname, address, email, password) VALUES(?,?,?,?,?,?)";
            try (PreparedStatement myPreparedStatement = connection.prepareStatement(query)) {
                myPreparedStatement.setString(1, phone);
                myPreparedStatement.setString(2, firstname);
                myPreparedStatement.setString(3, lastname);
                myPreparedStatement.setString(4, address);
                myPreparedStatement.setString(5, email);
                myPreparedStatement.setString(6, password);
                res = myPreparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            System.out.println("data not inserted");
            //e.printStackTrace();
        }

        return res;
    }

    public boolean check(String phone) {
        String query = "select count(*) from registration where phone=?";
        boolean f = false;
        try {
            Statement statement = connection.createStatement();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, phone);

            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                f = false;
            } else
                f = true;

        } catch (SQLException e) {
            System.out.println("false ashcche");
            e.printStackTrace();
        }
        return f;
    }
}
