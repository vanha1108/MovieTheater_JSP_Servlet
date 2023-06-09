package com.kltn1612.kltn.user.servlet;

import com.kltn1612.kltn.daos.UserDao;
import com.kltn1612.kltn.db.DBConnect;
import com.kltn1612.kltn.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user_login")
public class UserLogin extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        HttpSession session = req.getSession();

        UserDao dao = new UserDao(DBConnect.getConn());
        User user = dao.login(email, password);

        if (user != null) {
            Integer id = (Integer) req.getSession().getAttribute("id_ticket_click");
            if(id == null)
            {
                session.setAttribute("userObj", user);
                resp.sendRedirect("index.jsp");
            }
            else
            {
                session.setAttribute("userObj", user);
                resp.sendRedirect("payment.jsp");
            }
        } else {
            session.setAttribute("errorMsg", "invalid email & password");
            resp.sendRedirect("user_login.jsp");
        }

    }

}