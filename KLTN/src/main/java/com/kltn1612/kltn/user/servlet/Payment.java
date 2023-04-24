package com.kltn1612.kltn.user.servlet;

import com.kltn1612.kltn.daos.UserDao;
import com.kltn1612.kltn.db.DBConnect;
import com.kltn1612.kltn.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

import static java.lang.Integer.parseInt;

@WebServlet(name = "Payment", value = "/payment")
public class Payment extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer total = parseInt(request.getParameter("total"));
        Integer persentPoint = parseInt(request.getParameter("point"));
        Integer point = Math.round(total / 100000) + persentPoint;
        Object customerId = request.getSession().getAttribute("userObj");
        UserDao dao = new UserDao(DBConnect.getConn());
        boolean f =  dao.addPointUser(((User) customerId).getId(), point);
        if(f)
        {
            response.sendRedirect("order.jsp");
        }

    }
}
