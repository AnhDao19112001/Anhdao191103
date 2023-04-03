package controller;

import model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "controller.LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
        private static List<User> userList = new ArrayList<>();

        static {
            userList.add(new User(1, "admin", "123abc"));
        }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String useName = request.getParameter("userName");
        String passWord = request.getParameter("passWord");

        User user = null;
        for (User userLogin : userList) {
            if (userLogin.getUserName().equals(useName) && userLogin.getPassWord().equals(passWord)){
                user = userLogin;
                break;
            }
        }
        if (user != null) {
            response.sendRedirect("success.jsp");
        } else {
            String messengerLogin = "Username is incorrect. Please re-enter";
            request.setAttribute("messengerLogin", messengerLogin);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }
}
