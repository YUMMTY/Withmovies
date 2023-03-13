package Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(
        name = "LoginServlet ",
        urlPatterns = {"/LoginServlet"}
)
public class LoginServlet extends HttpServlet {
    public LoginServlet() {
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if ("Yumty".equals(username) && "630".equals(password)) {
            response.sendRedirect("/rev3_0_war_exploded/welcome2.jsp");
        } else {
            response.sendRedirect("/rev3_0_war_exploded/false.jsp");
        }

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}