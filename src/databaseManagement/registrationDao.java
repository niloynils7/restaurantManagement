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
            String query = "INSERT INTO user(phone, firstname, lastname, address, email, password) VALUES(?,?,?,?,?,?)";
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
        String query = "select email from user where phone=?";
        boolean f = false;
        try {
            Statement statement = connection.createStatement();
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, phone);

            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                System.out.println("aise");
                f = false;
            } else
            {
                System.out.println("else e aise");
                f = true;
            }


        } catch (SQLException e) {
            System.out.println("false ashcche");
            e.printStackTrace();
        }
        return f;
    }

    public ResultSet login_check(String phone, String pass) throws SQLException {
        String query = "select * from user where phone=? and password=?";
        try{
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setString(1, phone);
            statement.setString(2, pass);

            ResultSet res = statement.executeQuery();

            return res;
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        return null;
    }

    public int order_insert(int food_id, int userid) throws SQLException {
        String sql = "select count from order where userid=? and foodid=?";
        int res = 0;
        int count = 1;

        try {
            Statement statement = connection.createStatement();
            String query = "INSERT INTO foodorder(userid, foodid, count) VALUES (?,?,?)";
            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, userid);
            st.setInt(2, food_id);
            st.setInt(3, count);

            res = st.executeUpdate();


        } catch (SQLException e) {
            e.printStackTrace();
        }
        return res;

    }

    public ResultSet cartData(int userid)  {
        String query = "select name, price from food where food_id in (select foodid from foodorder where userid=?)";
        try {
            PreparedStatement st = connection.prepareStatement(query);
            st.setInt(1, userid);
            ResultSet rs = st.executeQuery();

            return rs;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;

    }
}
