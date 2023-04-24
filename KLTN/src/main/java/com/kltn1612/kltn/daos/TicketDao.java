package com.kltn1612.kltn.daos;

import com.kltn1612.kltn.entity.Ticket;
import com.kltn1612.kltn.entity.TicketDetail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class TicketDao {
    private Connection connection;

    public TicketDao(Connection connection) {
        this.connection = connection;
    }

    public List<TicketDetail> getAllTicketList() {
        List<TicketDetail> list = new ArrayList<TicketDetail>();
        TicketDetail ticketDetail = null;
        try {
            String sql = "select * from ticket join theater \n" +
                    "on ticket.theater = theater.id\n" +
                    "join movie on ticket.movie = movie.id";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ticketDetail = new TicketDetail();
                ticketDetail.setTicketId(rs.getInt(1));
                ticketDetail.setPrice(rs.getInt(2));
                ticketDetail.setTicketTheater(rs.getInt(3));
                ticketDetail.setTicketMovie(rs.getInt(4));
                ticketDetail.setTicketTime(rs.getString(5));
                ticketDetail.setTicketDate(rs.getString(6));
                ticketDetail.setRoom(rs.getInt(7));
                ticketDetail.setThearerName(rs.getString(9));
                ticketDetail.setMovieName(rs.getString(18));
                list.add(ticketDetail);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public TicketDetail getTicketById(int id) {
        TicketDetail ticketDetail = null;
        try {
            String sql = "select * from ticket join theater \n" +
                    "on ticket.theater = theater.id\n" +
                    "join movie on ticket.movie = movie.id where ticket.id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ticketDetail = new TicketDetail();
                ticketDetail.setTicketId(rs.getInt(1));
                ticketDetail.setPrice(rs.getInt(2));
                ticketDetail.setTicketTheater(rs.getInt(3));
                ticketDetail.setTicketMovie(rs.getInt(4));
                ticketDetail.setTicketTime(rs.getString(5));
                ticketDetail.setTicketDate(rs.getString(6));
                ticketDetail.setRoom(rs.getInt(7));
                ticketDetail.setThearerName(rs.getString(9));
                ticketDetail.setMovieName(rs.getString(19));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ticketDetail;
    }

    public boolean addTicket(Ticket ticket) {
        boolean f = false;
        try {
            String sql = "insert into ticket(price, theater, movie, time_ticket, " +
                    "date_ticket, room) values(?,?,?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, ticket.getPrice());
            ps.setInt(2, ticket.getTheater());
            ps.setInt(3, ticket.getMovie());
            ps.setString(4, ticket.getTimeTicket());
            ps.setString(5, ticket.getDateTicket());
            ps.setInt(6, ticket.getRoom());
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public List<Ticket> getListByTheaterAndMovie(int id) {
        List<Ticket> list = new ArrayList<Ticket>();
        Ticket ticket = null;
        try {
            String sql = "select * from ticket join theater on ticket.theater = theater.id \n" +
                    "join movie on ticket.movie = movie.id where movie.id = ? and CAST(ticket.date_ticket as date) = CURDATE()";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ticket = new Ticket();
                ticket.setId(rs.getInt(1));
                ticket.setPrice(rs.getInt(2));
                ticket.setTheater(rs.getInt(3));
                ticket.setTimeTicket(rs.getString(5));
                list.add(ticket);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public List<Ticket> getListByTheaterAndMovieAjax(int id_movie, String date) {
        List<Ticket> list = new ArrayList<Ticket>();
        Ticket ticket = null;
        try {
            String sql = "select * from ticket join theater on ticket.theater = theater.id \n" +
                    "join movie on ticket.movie = movie.id where movie.id = ? and CAST(ticket.date_ticket as date) = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id_movie);
            ps.setString(2, date);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ticket = new Ticket();
                ticket.setId(rs.getInt(1));
                ticket.setPrice(rs.getInt(2));
                ticket.setTheater(rs.getInt(3));
                ticket.setTimeTicket(rs.getString(5));
                list.add(ticket);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

//    public List<Ticket> getListDate(int id)
//    {
//        List<Ticket> list = new ArrayList<Ticket>();
//        Ticket ticket = null;
//        try {
//            String sql = "select * from ticket where CAST(date_ticket as date) >= CURDATE() and  movie = ?" +
//                    " order by CAST(date_ticket as date) desc limit 6";
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setInt(1, id);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()){
//                ticket = new Ticket();
//                ticket.setDateTicket(rs.getString(7));
//                list.add(ticket);
//            }
//        }catch (Exception e)
//        {
//            e.printStackTrace();
//        }
//        return list;
//    }

    public List<Ticket> getTickets(String fromDate, String toDate) {
        List<Ticket> tickets = new ArrayList<>();
        StringBuilder sqlBuilder = new StringBuilder("SELECT * FROM ticket WHERE CAST(date_ticket as date)");
        boolean isHaveFromDate = false;
        if (fromDate != "") {
            sqlBuilder.append(" >= '" + fromDate + "'");
            isHaveFromDate = true;
        }
        if (toDate != "") {
            if (isHaveFromDate) {
                sqlBuilder.append(" AND CAST(date_ticket as date) <= '" + toDate + "'");
            } else {
                sqlBuilder.append(" <= '" + toDate + "'");
            }
        }
        try {
            PreparedStatement ps = connection.prepareStatement(sqlBuilder.toString());
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Ticket ticket = new Ticket();
                ticket.setId(Integer.parseInt(rs.getString(1)));
                ticket.setPrice(Integer.parseInt(rs.getString(2)));
                ticket.setTheater(Integer.parseInt(rs.getString(3)));
                ticket.setMovie(Integer.parseInt(rs.getString(4)));
                ticket.setTimeTicket(rs.getString(5));
                ticket.setDateTicket(rs.getString(6));
                ticket.setRoom(Integer.parseInt(rs.getString(7)));
                tickets.add(ticket);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return tickets;
    }
}
