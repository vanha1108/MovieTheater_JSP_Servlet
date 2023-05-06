package com.kltn1612.kltn.daos;
import com.kltn1612.kltn.entity.WaterCorn;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class WaterConrnDao {
    private Connection connection;

    public WaterConrnDao(Connection connection) {
        this.connection = connection;
    }

    public List<WaterCorn> getAllWaterCorn()
    {
        List<WaterCorn> list = new ArrayList<WaterCorn>();
        WaterCorn waterCorn = null;
        try {
            String sql = "select * from water_corn";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                waterCorn = new WaterCorn();
                waterCorn.setId(rs.getInt(1));
                waterCorn.setName(rs.getString(2));
                list.add(waterCorn);
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return list;

    }
}
