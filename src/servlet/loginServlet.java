package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Servlet")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String phonenumber = request.getParameter("phonenumber");
        String pass = request.getParameter("pass");

        if(phonenumber.equals("1234") && pass.equals("12345")) //database lagaite hobe
        {
            //response.sendRedirect(" "); //login er por jekhane jaite chai tar nam dibo
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
