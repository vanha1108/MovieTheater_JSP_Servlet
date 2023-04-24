package com.kltn1612.kltn.admin.servlet;

import com.kltn1612.kltn.daos.MovieDao;
import com.kltn1612.kltn.db.DBConnect;
import com.kltn1612.kltn.entity.Movie;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

@WebServlet("/admin/add_movie")
@MultipartConfig
public class AddMovie extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            Part file = request.getPart("file");
            String imageFileName=file.getSubmittedFileName();
            String uploadPath="C:/Users/ngang/Downloads/web/KLTN/src/main/webapp/img/"+imageFileName;
            try
            {
                FileOutputStream fos=new FileOutputStream(uploadPath);
                InputStream is=file.getInputStream();
                byte[] data=new byte[is.available()];
                is.read(data);
                fos.write(data);
                fos.close();
            }

            catch(Exception e)
            {
                e.printStackTrace();
            }

            String name = request.getParameter("name");
            String[] assignedRkkesources = request.getParameterValues("theater");
            String trailer = request.getParameter("trailer");
            String description = request.getParameter("description");
            String releaseDate = request.getParameter("release_date");
            Integer duration = Integer.valueOf(request.getParameter("duration"));
            Integer ageRestricted = Integer.valueOf(request.getParameter("age_retricted"));
            String actors = request.getParameter("actors");
            String directors = request.getParameter("directors");
            String theater = request.getParameter("theater");
            Movie movie = new Movie(name, imageFileName, trailer, description, releaseDate, duration, ageRestricted, actors, directors, theater);
            MovieDao dao = new MovieDao(DBConnect.getConn());
            HttpSession session = request.getSession();
            boolean f = dao.addMovie(movie, assignedRkkesources);
            if (f) {
                session.setAttribute("sucMsg", "Register Sucessfully");
                response.sendRedirect("movie_manager.jsp");
            } else {
                session.setAttribute("errorMsg", "Something wrong on server");
                response.sendRedirect("movie_manager.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }
}
