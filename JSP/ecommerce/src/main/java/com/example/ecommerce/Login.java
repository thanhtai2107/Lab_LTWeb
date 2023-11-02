package com.example.ecommerce;

import com.example.ecommerce.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Login", value = "/login")
public class Login extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if (UserService.getInstance().checkLogin(username, password)) {
            resp.sendRedirect("/ecommerce/index.jsp");
        } else {
            req.setAttribute("error", "Login fail");
            req.getRequestDispatcher("/ecommerce/login.jsp").forward(req, resp);
        }
    }
}
