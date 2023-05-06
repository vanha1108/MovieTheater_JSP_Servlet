package com.kltn1612.kltn.user.servlet;

import com.kltn1612.kltn.daos.PremiereDao;
import com.kltn1612.kltn.daos.PremiereDetailDao;
import com.kltn1612.kltn.db.DBConnect;
import com.kltn1612.kltn.entity.Premiere;
import com.kltn1612.kltn.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/choose_combo")
public class ChooseCombo extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String total = request.getParameter("total_price");
        String ticket_id = request.getParameter("ticket_id");
        String seats = request.getParameter("seats");
        String[] myJsonData = request.getParameterValues("count");
        PremiereDao dao = new PremiereDao(DBConnect.getConn());
        Premiere premiere = new Premiere(total, ticket_id, seats);
        dao.addPremiere(premiere);
        PremiereDetailDao premiereDetailDao = new PremiereDetailDao(DBConnect.getConn());
        HttpSession session = request.getSession();
        Integer idPremier = premiereDetailDao.addPremiereDetail(myJsonData);
        session.setAttribute("id_premier", idPremier);
    }

}