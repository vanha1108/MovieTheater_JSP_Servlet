package com.kltn1612.kltn.daos;

import com.kltn1612.kltn.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
    private Connection connection;

    public UserDao(Connection connection) {
        this.connection = connection;
    }

    public boolean userRegister(User user)
    {
        boolean f = false;
        try {
            String sql = "insert into user_dtls(full_name, email, password) values(?,?,?)";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, user.getFullName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());
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

    public boolean addPointUser(int id, int point)
    {
        boolean f = false;
        try {
            String sql = "update user_dtls set point = ? where id = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, point);
            ps.setInt(2, id);
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

    public User login(String em, String psw)
    {
        User u = null;
        try {
            String sql = "select * from user_dtls where email = ? and password = ?";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, em);
            ps.setString(2, psw);
            ResultSet rs = ps.executeQuery();
            while (rs.next())
            {
                u = new User();
                u.setId(rs.getInt(1));
                u.setFullName(rs.getString(2));
                u.setEmail(rs.getString(3));
                u.setPassword(rs.getString(4));
            }

        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return u;
    }
}
