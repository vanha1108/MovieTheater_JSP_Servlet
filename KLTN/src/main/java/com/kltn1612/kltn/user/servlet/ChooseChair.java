package com.kltn1612.kltn.user.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/choose_chair")
public class ChooseChair extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String total = request.getParameter("total");
        String seats = request.getParameter("seats");
        String ticket_id = request.getParameter("ticket_id");
        HttpSession session = request.getSession();
        if(total != null && seats != null && ticket_id != null)
        {
            session.setAttribute("total", total);
            session.setAttribute("seats", seats);
            session.setAttribute("ticket_id", ticket_id);
        }

    }

}