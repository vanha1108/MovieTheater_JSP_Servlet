package com.kltn1612.kltn.admin.servlet;

import com.kltn1612.kltn.daos.MovieDao;
import com.kltn1612.kltn.daos.TicketDao;
import com.kltn1612.kltn.db.DBConnect;
import com.kltn1612.kltn.entity.Ticket;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/admin/delete_movie")
public class DeleteMovie extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            int id = Integer.parseInt(request.getParameter("id"));

            MovieDao dao = new MovieDao(DBConnect.getConn());
            HttpSession session = request.getSession();
            if (dao.deleteMovie(id)) {
                session.setAttribute("succMsg", "Movie Delete Sucessfully..");
                response.sendRedirect("movie_manager.jsp");
            } else {
                session.setAttribute("errorMsg", "something wrong on server");
                response.sendRedirect("movie_manager.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
