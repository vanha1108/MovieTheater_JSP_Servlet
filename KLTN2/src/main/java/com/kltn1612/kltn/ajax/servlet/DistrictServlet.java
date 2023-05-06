package com.kltn1612.kltn.ajax.servlet;

import com.kltn1612.kltn.daos.DistrictDetailDao;
import com.kltn1612.kltn.db.DBConnect;
import com.kltn1612.kltn.entity.DistrictDetail;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@WebServlet("/admin/DistrictServlet")
public class DistrictServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String province = request.getParameter("province");
        int i = Integer.parseInt(province);
        DistrictDetailDao districtDetailDao = new DistrictDetailDao(DBConnect.getConn());
        List<DistrictDetail> list = districtDetailDao.getDistrictDetail(i);
        String html = "";
        for(DistrictDetail districtDetail: list)
        {
            html += "<option value="+districtDetail.getId()+">"+districtDetail.getName()+"</option>";
        }
        response.setContentType("text/html; charset=UTF-8");
        response.getWriter().write(html);
    }

}