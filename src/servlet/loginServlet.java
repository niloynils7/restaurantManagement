package servlet;

import databaseManagement.registrationDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String phonenumber = request.getParameter("phonenumber");
        String pass = request.getParameter("pass");

        registrationDao obj = new registrationDao();

        try {
            ResultSet res = obj.login_check(phonenumber, pass);
            if(res.next()) //database lagaite hobe
            {
                System.out.println("logged in");
                HttpSession session = request.getSession();
                session.setAttribute("phonenumber", phonenumber);
                session.setAttribute("id", res.getInt("userid"));
                session.setAttribute("name", res.getString("firstname"));
                response.sendRedirect("indexlog.jsp");
            }
            else
            {
                response.sendRedirect("login.jsp");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
