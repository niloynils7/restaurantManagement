package servlet;

import databaseManagement.registrationDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/orderServlet")
public class orderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        int user_id = (int) session.getAttribute("id");
        int foodid = 0;
//        System.out.println(foodid);
        if(request.getParameter("set1")!=null)
        {
            foodid = 1;
        }
        else if(request.getParameter("set2")!=null)
        {
            foodid = 2;
        }
        else if(request.getParameter("set3")!=null)
        {
            foodid = 3;
        }
        else if(request.getParameter("set4")!=null)
        {
            foodid = 4;
        }
        else if(request.getParameter("set5")!=null)
        {
            foodid = 5;
        }
        else if(request.getParameter("set6")!=null)
        {
            foodid = 6;
        }

        registrationDao obj = new registrationDao();

        try {
            obj.order_insert(foodid, user_id);
        } catch (Exception e) {
            System.out.println("vai!! valoo asen?");
        }
        finally {
            response.sendRedirect("menu.jsp");
        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
