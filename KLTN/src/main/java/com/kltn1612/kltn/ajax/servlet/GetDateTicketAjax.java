package com.kltn1612.kltn.ajax.servlet;

import com.kltn1612.kltn.daos.DistrictDetailDao;
import com.kltn1612.kltn.daos.TheaterDao;
import com.kltn1612.kltn.daos.TicketDao;
import com.kltn1612.kltn.db.DBConnect;
import com.kltn1612.kltn.entity.DistrictDetail;
import com.kltn1612.kltn.entity.Theater;
import com.kltn1612.kltn.entity.Ticket;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "GetDateTicketAjax", value = "/GetDateTicketAjax")
public class GetDateTicketAjax extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String date = request.getParameter("get_date");
        String id_movie = request.getParameter("id_movie");
        int id = Integer.parseInt(id_movie);
        TicketDao ticketDao = new TicketDao(DBConnect.getConn());
        List<Ticket> tickets = ticketDao.getListByTheaterAndMovieAjax(id, date);
        TheaterDao theaterDao = new TheaterDao(DBConnect.getConn());
        List<Theater> listTheater = theaterDao.getTheaterByMovieId(id);
        String html = "";
        for (Theater theater : listTheater) {
            html += " <div class=\"list-group-item btn-select-cinema\">" +
                    " <p style=\"font-weight: 900;\">"+theater.getName()+"\n" +
                    " </p> <p class=\"small text-muted mb-3\">"+theater.getAddress() +", "+ theater.getDistrict() +", "+ theater.getProvince() +"\n" +
                    "                                </p>\n" +
                    "                                <div class=\"showtimes loaded\">\n" +
                    "                                    <div class=\"mb-1\">\n" +
                    "                                        <label class=\"small mb-2 font-weight-bold d-block text-dark\">\n" +
                    "                                            2D Eng Sub\n" +
                    "                                        </label>";
            for (Ticket ticket : tickets) {
                if (ticket.getTheater() == theater.getId()) {
                    request.getSession().removeAttribute("id_ticket_click");
                    request.getSession().setAttribute("id_ticket_click", ticket.getId());
                    html += "<a style=\"margin-right: 20px;\" href =\"choose_chair.jsp?id=" + ticket.getId() + "\""+
                            "class=\"btn btn-sm btn-showtime btn-outline-dark is-ticketing is-show-price\">" +
                            "<span class=\"time\" >" + ticket.getTimeTicket() + "</span>  " +
                            "<span class=\"amenity price\" >" + ticket.getPrice() + " đ </span ></a>";
                }
            }
            html += "   </div>\n" +
                    " </div>\n" +
                    "</div>";
        }
        response.setContentType("text/html; charset=UTF-8");
        response.getWriter().write(html);
    }
}
