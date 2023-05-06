package com.kltn1612.kltn.daos;

import com.kltn1612.kltn.entity.Premiere;
import com.kltn1612.kltn.entity.PremiereDetail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class PremiereDetailDao {
    private Connection connection;
    public PremiereDetailDao(Connection connection) {
        this.connection = connection;
    }
    public int addPremiereDetail(String[] myJsonData)
    {
        int idPremiere = 0;
        try {
            int i = 1;
            String query = "SELECT * FROM premiere ORDER BY id DESC Limit 1";
            PreparedStatement ps = connection.prepareStatement(query);
            ResultSet rs = ps.executeQuery(query);
            while(rs.next())
            {
                idPremiere = rs.getInt(1);
            }
            for(String s: myJsonData)
            {
                String sql = "insert into premiere_detail(count_combo, id_combo, id_premiere) values(?, ?, ?)";
                PreparedStatement ps2 = connection.prepareStatement(sql);
                ps2.setInt(1, Integer.parseInt(s));
                ps2.setInt(2, i);
                ps2.setInt(3, idPremiere);
                ps2.executeUpdate();
                i++;
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return idPremiere;
    }
}
