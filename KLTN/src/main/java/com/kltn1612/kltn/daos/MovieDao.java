package com.kltn1612.kltn.daos;

import com.kltn1612.kltn.entity.Movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

public class MovieDao {
    private Connection connection;

    public MovieDao(Connection connection) {
        this.connection = connection;
    }

    public List<Movie> getAllMovieList()
    {
        List<Movie> list = new ArrayList<Movie>();
        Movie movie = null;
        try {
            String sql = "select * from movie";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                movie = new Movie();
                movie.setId(rs.getInt(1));
                movie.setName(rs.getString(2));
                movie.setImage(rs.getString(3));
                movie.setTrailer(rs.getString(4));
                movie.setDescription(rs.getString(5));
                movie.setReleaseDate(rs.getString(6));
                movie.setDuration(rs.getInt(7));
                movie.setAgeRetricted(rs.getInt(8));
                movie.setActors(rs.getString(9));
                movie.setDirectors(rs.getString(10));
                list.add(movie);
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return list;

    }
    public List<Movie> getAllMovieListPresent()
    {
        List<Movie> list = new ArrayList<Movie>();
        Movie movie = null;
        LocalDate today = LocalDate.now();
        int month = today.getMonthValue();
        try {
            String sql = "select * from movie where EXTRACT(MONTH FROM release_date) = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, month);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                movie = new Movie();
                movie.setId(rs.getInt(1));
                movie.setName(rs.getString(2));
                movie.setImage(rs.getString(3));
                movie.setTrailer(rs.getString(4));
                movie.setDescription(rs.getString(5));
                movie.setReleaseDate(rs.getString(6));
                movie.setDuration(rs.getInt(7));
                movie.setAgeRetricted(rs.getInt(8));
                movie.setActors(rs.getString(9));
                movie.setDirectors(rs.getString(10));
                list.add(movie);
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return list;

    }
    public List<Movie> getAllMovieListNextMonth()
    {
        List<Movie> list = new ArrayList<Movie>();
        Movie movie = null;
        LocalDate today = LocalDate.now();
        int month = today.getMonthValue() + 1;
        try {
            String sql = "select * from movie where EXTRACT(MONTH FROM release_date) = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, month);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                movie = new Movie();
                movie.setId(rs.getInt(1));
                movie.setName(rs.getString(2));
                movie.setImage(rs.getString(3));
                movie.setTrailer(rs.getString(4));
                movie.setDescription(rs.getString(5));
                movie.setReleaseDate(rs.getString(6));
                movie.setDuration(rs.getInt(7));
                movie.setAgeRetricted(rs.getInt(8));
                movie.setActors(rs.getString(9));
                movie.setDirectors(rs.getString(10));
                list.add(movie);
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return list;

    }
    public boolean addMovie(Movie movie, String[] assignedRkkesources)
    {
        boolean f = false;
        try {
            String sql = "insert into movie(name, image, trailer, description, release_date, duration, " +
                    "age_restricted, actors, directors, theater) values(?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, movie.getName());
            ps.setString(2, movie.getImage());
            ps.setString(3, movie.getTrailer());
            ps.setString(4, movie.getDescription());
            ps.setString(5, movie.getReleaseDate());
            ps.setInt(6, movie.getDuration());
            ps.setInt(7, movie.getAgeRetricted());
            ps.setString(8, movie.getActors());
            ps.setString(9, movie.getDirectors());
            ps.setString(10, movie.getTheater());

            int i = ps.executeUpdate();
            int recipientID = 0;
            ResultSet rs2 = ps.executeQuery("SELECT * FROM movie ORDER BY id DESC Limit 1;");
            while(rs2.next())
            {
                recipientID = rs2.getInt(1);
            }
            for (String s: assignedRkkesources) {
                String sql2 = "insert into role_movie_theater(movie_id, theater_id) values(?,?)";
                PreparedStatement ps2 = connection.prepareStatement(sql2);
                ps2.setInt(1, recipientID);
                ps2.setInt(2, Integer.parseInt(s));
                ps2.executeUpdate();
            }
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
    public Movie getMovieById(int id)
    {
        Movie movie = null;
        try {
            String sql = "select * from movie where id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                movie = new Movie();
                movie.setId(rs.getInt(1));
                movie.setName(rs.getString(2));
                movie.setImage(rs.getString(3));
                movie.setTrailer(rs.getString(4));
                movie.setDescription(rs.getString(5));
                movie.setReleaseDate(rs.getString(6));
                movie.setDuration(rs.getInt(7));
                movie.setAgeRetricted(rs.getInt(8));
                movie.setActors(rs.getString(9));
                movie.setDirectors(rs.getString(10));
                movie.setTheater(rs.getString(11));
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return movie;
    }

    private String sqlParams(int numParams) {
        StringBuilder sb = new StringBuilder();
        if(numParams <= 0) return sb.toString();
        for(int ctr = 0; ctr < numParams - 1; ++ctr) {
            sb.append("?,");
        }
        sb.append("?");
        return sb.toString();
    }

}
