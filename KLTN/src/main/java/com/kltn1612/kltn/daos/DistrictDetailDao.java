package com.kltn1612.kltn.daos;

import com.kltn1612.kltn.entity.DistrictDetail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DistrictDetailDao {
    private Connection connection;

    public DistrictDetailDao(Connection connection) {
        this.connection = connection;
    }

    public  List<DistrictDetail> getDistrictDetail(int i)
    {
        List<DistrictDetail> list = new ArrayList<DistrictDetail>();
        DistrictDetail districtDetail = null;
        try
        {
            String query = "SELECT * FROM district JOIN province ON province.id = district.province_id where province.id = ?";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, i);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                districtDetail = new DistrictDetail();
                districtDetail.setId(rs.getInt(1));
                districtDetail.setName(rs.getString(2));
                districtDetail.setPrefix(rs.getString(3));
                districtDetail.setProvinceId(rs.getInt(4));
                districtDetail.setNameProvince(rs.getString(6));
                list.add(districtDetail);
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
