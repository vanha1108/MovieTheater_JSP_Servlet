package com.kltn1612.kltn.daos;
import com.kltn1612.kltn.entity.Comment;
import com.kltn1612.kltn.entity.DistrictDetail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class CommentDao {
    private Connection connection;

    public CommentDao(Connection connection) {
        this.connection = connection;
    }
    public boolean addComment(Comment comment)
    {
        boolean f = false;
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd ");
        Calendar cal = Calendar.getInstance();
        Date date = cal.getTime();
        String todayAsString = sdf.format(date);
        try {

                String sql = "insert into comment(movie_id, customer_id, comment,star, date) values(?, ?, ?, ?, ?)";
                PreparedStatement ps = connection.prepareStatement(sql);
                ps.setInt(1, comment.getMovieId());
                ps.setInt(2, comment.getCustomerId());
                ps.setString(3, comment.getComment());
                ps.setString(4, comment.getStar());
                ps.setString(5, todayAsString);
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

    public List<Comment> getDistrictDetail(int id)
    {
        List<Comment> list = new ArrayList<Comment>();
        Comment comment = null;
        try
        {
            String query = "select * from comment join  user_dtls \n" +
                    "on user_dtls.id = comment.customer_id\n" +
                    "where movie_id = ? and comment.comment is not null";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                comment = new Comment();
                comment.setId(rs.getInt(1));
                comment.setComment(rs.getString(4));
                comment.setStar(rs.getString(5));
                comment.setDate(rs.getString(6));
                comment.setFullName(rs.getString(8));
                list.add(comment);
            }
        }
        catch(Exception e)
        {
            System.out.println("Problem in Query");
            e.printStackTrace();
        }

        return list;
    }
}
