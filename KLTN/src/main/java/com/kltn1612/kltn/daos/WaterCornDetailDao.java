package com.kltn1612.kltn.daos;
import com.kltn1612.kltn.entity.Movie;
import com.kltn1612.kltn.entity.WaterCornDetail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class WaterCornDetailDao {
    private Connection connection;

    public WaterCornDetailDao(Connection connection) {
        this.connection = connection;
    }

    public List<WaterCornDetail> getAllWaterDetailCorn()
    {
        List<WaterCornDetail> list = new ArrayList<WaterCornDetail>();
        WaterCornDetail waterCornDetail = null;
        try {
            String sql = "select * from water_corn_detail";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                waterCornDetail = new WaterCornDetail();
                waterCornDetail.setId(rs.getInt(1));
                waterCornDetail.setName(rs.getString(2));
                waterCornDetail.setPrice(rs.getString(3));
                waterCornDetail.setWaterCornId(rs.getInt(4));
                list.add(waterCornDetail);
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return list;
    }
    public List<WaterCornDetail> getWaterCornDetailById(int id)
    {
        List<WaterCornDetail> list = new ArrayList<WaterCornDetail>();
        WaterCornDetail waterCornDetail = null;
        try {
            String sql = "select * from water_corn_detail join premiere_detail on water_corn_detail.id = premiere_detail.id_combo " +
                    "where premiere_detail.id_premiere = ? and premiere_detail.count_combo > 0 ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                waterCornDetail = new WaterCornDetail();
                waterCornDetail.setId(rs.getInt(1));
                waterCornDetail.setName(rs.getString(2));
                waterCornDetail.setPrice(rs.getString(3));
                waterCornDetail.setCountCombo(rs.getString(6));
                list.add(waterCornDetail);
            }
        }catch (Exception e)
        {
            e.printStackTrace();
        }
        return list;
    }
}
