package com.kltn1612.kltn.daos;

import com.kltn1612.kltn.entity.Premiere;
import com.kltn1612.kltn.entity.Ticket;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class StatisticDao {
    private Connection connection;

    public StatisticDao(Connection connection) {
        this.connection = connection;
    }

    public boolean addDate(Premiere premiere)
    {
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
        Date date = new Date();
        boolean f = false;
        try {
            String sql = "insert into premiere(total, ticket_id, seats, customer_id, date) values(?, ?, ?, ?, ?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, premiere.getTotal());
            ps.setString(2, premiere.getTicketId());
            ps.setString(3, premiere.getSeats());
            ps.setInt(4, premiere.getCustomerId());
            ps.setString(5, dateFormat.format(date));
            int i = ps.executeUpdate();
            if(i == 1)
            {
                f = true;
            }

        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }

    public Premiere getPremieres(int id)
    {
        Premiere premiere = null;
        try {
            String sql = "select * from premiere join ticket on premiere.ticket_id = ticket.id\n" +
                    "join theater on theater.id = ticket.theater\n" +
                    "join movie on movie.id = ticket.movie\n" +
                    "join user_dtls on user_dtls.id = premiere.customer_id\n" +
                    "where premiere.id = ? ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                premiere = new Premiere();
                premiere.setId(rs.getInt(1));
                premiere.setTotal(rs.getString(2));
                premiere.setSeats(rs.getString(5));
                premiere.setPriceTicket(rs.getInt(9));
                premiere.setTimeTicket(rs.getString(12));
                premiere.setDateTicket(rs.getString(13));
                premiere.setRoom(rs.getInt(14));
                premiere.setNameTheater(rs.getString(16));
                premiere.setNameMovie(rs.getString(26));
                premiere.setPoint(rs.getInt(40));
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return premiere;
    }

    public List<Premiere> getSeats(int id)
    {
        List<Premiere> list = new ArrayList<Premiere>();
        Premiere premiere = null;
        try {
            String sql = "select * from premiere where ticket_id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                premiere = new Premiere();
                premiere.setId(rs.getInt(1));
                premiere.setSeats(rs.getString(5));
                list.add(premiere);
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return list;
    }

    public boolean updateCustomerId(int customerId, int id) {
        boolean f = false;
        try {
            String sql = "update premiere set customer_id=? where id=?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, customerId);
            ps.setInt(2, id);
            int i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}
