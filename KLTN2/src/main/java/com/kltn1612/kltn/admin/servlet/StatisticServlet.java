package com.kltn1612.kltn.admin.servlet;

import com.kltn1612.kltn.daos.MovieDao;
import com.kltn1612.kltn.daos.PremiereDao;
import com.kltn1612.kltn.daos.TheaterDao;
import com.kltn1612.kltn.daos.TicketDao;
import com.kltn1612.kltn.db.DBConnect;
import com.kltn1612.kltn.dto.StatisticDTO;
import com.kltn1612.kltn.entity.Movie;
import com.kltn1612.kltn.entity.Premiere;
import com.kltn1612.kltn.entity.Theater;
import com.kltn1612.kltn.entity.Ticket;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@WebServlet("/admin/statistic")
@MultipartConfig
public class StatisticServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fromDate = request.getParameter("fromDate");
        String toDate = request.getParameter("toDate");
        if ((fromDate != "" && fromDate != null) || (toDate != "" && toDate != null)) {
            request.setAttribute("statistics", getStatistic(fromDate, toDate));
        }
        request.getRequestDispatcher("/admin/statistic.jsp").forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ZoneId zoneId = ZoneId.of("UTC");
        LocalDate today = LocalDate.now(zoneId);
        String fromDate = today.withDayOfMonth(1).toString();
        String toDate = today.withDayOfMonth(today.getMonth().length(today.isLeapYear())).toString();
        if ((fromDate != "" && fromDate != null) || (toDate != "" && toDate != null)) {
            request.setAttribute("statistics", getStatistic(fromDate, toDate));
        }
        request.getRequestDispatcher("/admin/statistic.jsp").forward(request, response);
    }

    private List<StatisticDTO> getStatistic(String fromDate, String toDate) {
        PremiereDao premiereDao = new PremiereDao(DBConnect.getConn());
        List<Premiere> premieres = premiereDao.getPremiere(fromDate, toDate);

        List<StatisticDTO> result = new ArrayList<>();
        if (premieres != null && premieres.size() > 0) {
            Connection connection = DBConnect.getConn();
            TicketDao ticketDao = new TicketDao(connection);
            TheaterDao theaterDao = new TheaterDao(connection);
            MovieDao movieDao = new MovieDao(connection);

            Set<String> ticketIds = premieres.stream().map(Premiere::getTicketId).collect(Collectors.toSet());
//            List<Ticket> tickets = ticketDao.findByIds(ticketIds);

            for (Premiere premiere : premieres) {
                Ticket ticket = ticketDao.findById(Integer.parseInt(premiere.getTicketId()));
//                Ticket ticket = tickets.stream().filter(t -> t.getId() == Integer.parseInt(premiere.getTicketId()))
//                        .findFirst().orElse(null);
                if (ticket != null) {
                    boolean isExist = false;
                    for (StatisticDTO statisticDTO : result) {
                        if (ticket.getTheater() == statisticDTO.getTheaterId() && ticket.getMovie() == statisticDTO.getMovieId()) {
                            isExist = true;
                            statisticDTO.setCountTicket(statisticDTO.getCountTicket() + 1);
                            statisticDTO.setTotalPrice(statisticDTO.getTotalPrice() + Double.parseDouble(premiere.getTotal()));
                        }
                    }
                    if (!isExist) {
                        StatisticDTO statisticDTO = new StatisticDTO();
                        Theater theater = theaterDao.getTheaterById(ticket.getTheater());
                        if (theater != null) {
                            statisticDTO.setTheaterName(theater.getName());
                        }
                        Movie movie = movieDao.getMovieById(ticket.getMovie());
                        if (movie != null) {
                            statisticDTO.setMovieName(movie.getName());
                        }
                        statisticDTO.setTheaterId(ticket.getTheater());
                        statisticDTO.setMovieId(ticket.getMovie());
                        statisticDTO.setRoomId(ticket.getRoom());
                        statisticDTO.setCountTicket(1);
                        statisticDTO.setTotalPrice(Double.parseDouble(premiere.getTotal()));
                        statisticDTO.setDateTicket(premiere.getDateTicket());
                        result.add(statisticDTO);
                    }
                }
            }
        }

        result.sort(new Comparator<StatisticDTO>() {
            @Override
            public int compare(StatisticDTO o1, StatisticDTO o2) {
                return o1.getTheaterId().compareTo(o2.getTheaterId());
            }
        });
        return result;
    }
}
