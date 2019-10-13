package servlet;

import databaseManagement.registrationDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

@WebServlet("/registrationServlet")
public class registrationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String err = "";

        PrintWriter out = response.getWriter();

        if(!firstname.equals("") && !lastname.equals("") && !email.equals("") && !password.equals("") && !address.equals("") && !phone.equals("") )
        {
            registrationDao obj = new registrationDao();
            try {
                System.out.println(obj.check(phone));
                if(obj.check(phone))
                {
                    try {
                        obj.reg_insert(phone, firstname, lastname,address,  email, password);
                        response.sendRedirect("login.jsp");
                    } catch (SQLException e) {
                        System.out.println("reg_insert e jay nai");
                    }

                }
                else
                {
                    //mobile number already exists in database
                    out.println("<h1>phone number already exists</h1>");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        else
        {
            response.sendRedirect("registration.jsp");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
