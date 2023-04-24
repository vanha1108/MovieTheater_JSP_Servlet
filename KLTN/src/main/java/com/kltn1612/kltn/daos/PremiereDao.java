package com.kltn1612.kltn.daos;

import com.kltn1612.kltn.entity.Premiere;
import com.kltn1612.kltn.entity.Ticket;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class PremiereDao {
    private Connection connection;

    public PremiereDao(Connection connection) {
        this.connection = connection;
    }

    public boolean addPremiere(Premiere premiere)
    {
        boolean f = false;
        try {
            String sql = "insert into premiere(total, ticket_id, seats, customer_id) values(?, ?, ?, ?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, premiere.getTotal());
            ps.setString(2, premiere.getTicketId());
            ps.setString(3, premiere.getSeats());
            ps.setInt(4, premiere.getCustomerId());
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
                premiere.setPriceTicket(rs.getInt(8));
                premiere.setTimeTicket(rs.getString(11));
                premiere.setDateTicket(rs.getString(12));
                premiere.setRoom(rs.getInt(13));
                premiere.setNameTheater(rs.getString(15));
                premiere.setNameMovie(rs.getString(24));
                premiere.setPoint(rs.getInt(38));
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
}
