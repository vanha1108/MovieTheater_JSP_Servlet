package com.kltn1612.kltn.daos;

import com.kltn1612.kltn.entity.Theater;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TheaterDao {
    private Connection connection;

    public TheaterDao(Connection connection) {
        this.connection = connection;
    }

    public List<Theater> getAllTheaterList() {
        List<Theater> list = new ArrayList<Theater>();
        Theater theater = null;
        try {
            String sql = "select * from theater";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                theater = new Theater();
                theater.setId(rs.getInt(1));
                theater.setName(rs.getString(2));
                list.add(theater);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;

    }

    public Theater getTheaterById(int id) {
        Theater theater = null;
        try {
            String sql = "select * from theater where id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                theater = new Theater();
                theater.setLayout(rs.getString(10));
                theater.setName(rs.getString(2));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return theater;
    }

    public List<Theater> getTheaterByMovieId(int id) {
        List<Theater> list = new ArrayList<Theater>();
        Theater theater = null;
        try {
            String sql = "select * from theater join role_movie_theater on theater.id = role_movie_theater.theater_id where role_movie_theater.movie_id = ? ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                theater = new Theater();
                theater.setId(rs.getInt(1));
                theater.setName(rs.getString(2));
                theater.setProvince(rs.getString(3));
                theater.setDistrict(rs.getString(4));
                theater.setAddress(rs.getString(5));
                list.add(theater);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
