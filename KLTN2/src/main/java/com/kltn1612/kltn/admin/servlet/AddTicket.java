package com.kltn1612.kltn.admin.servlet;

import com.kltn1612.kltn.daos.TicketDao;
import com.kltn1612.kltn.db.DBConnect;
import com.kltn1612.kltn.entity.Ticket;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@WebServlet("/admin/add_ticket")
public class AddTicket extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Integer price = Integer.valueOf(request.getParameter("price"));
            Integer theater = Integer.valueOf(request.getParameter("theater"));
            Integer movie = Integer.valueOf(request.getParameter("movie"));
            String time_ticket = request.getParameter("time_ticket");
            String date_ticket = request.getParameter("date_ticket");
            Integer room = Integer.valueOf(request.getParameter("room"));
            Ticket ticket = new Ticket(price, theater, movie, time_ticket, date_ticket, room);

            TicketDao ticketDao = new TicketDao(DBConnect.getConn());
            HttpSession session = request.getSession();
            boolean f = ticketDao.addTicket(ticket);

            if (f) {
                session.setAttribute("sucMsg", "Register Sucessfully");
                response.sendRedirect("ticket_manager.jsp");

            } else {
                session.setAttribute("errorMsg", "Something wrong on server");
                response.sendRedirect("ticket_manager.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
