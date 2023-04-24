package com.kltn1612.kltn.daos;

import com.kltn1612.kltn.entity.Province;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProvinceDao {
    private Connection connection;

    public ProvinceDao(Connection connection) {
        this.connection = connection;
    }

    public List<Province> getAllProvinceList()
    {
        List<Province> list = new ArrayList<Province>();
        Province province = null;
        try {
            String sql = "select * from province";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                province = new Province();
                province.setId(rs.getInt(1));
                province.setName(rs.getString(2));
                province.setCode(rs.getString(3));
                list.add(province);
            }

        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return list;

    }
}
