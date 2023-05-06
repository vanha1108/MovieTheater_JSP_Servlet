package com.kltn1612.kltn.ajax.servlet;

import com.kltn1612.kltn.daos.CommentDao;
import com.kltn1612.kltn.daos.UserDao;
import com.kltn1612.kltn.db.DBConnect;
import com.kltn1612.kltn.entity.Comment;
import com.kltn1612.kltn.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PostComment", value = "/PostComment")
public class PostComment extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer ticket_id = Integer.parseInt(request.getParameter("ticket_id"));
        String message = request.getParameter("message");
        String someNumbers = request.getParameter("someNumbers");
        Object customerId = request.getSession().getAttribute("userObj");
        int getCustomerId = ((User) customerId).getId();
        Comment c = new Comment(ticket_id, getCustomerId, someNumbers, message);
        CommentDao dao = new CommentDao(DBConnect.getConn());
        boolean f = dao.addComment(c);
            List<Comment> listComment = dao.getDistrictDetail(ticket_id);
            String html = "";
            for (Comment list: listComment)
            {
                String star = "";
                String[] arStr = list.getStar().split(",");
                for (String item : arStr) {
                    if(item.equals("1") || item.equals(" 1"))
                    {
                        star += "<i style=\"background: yellow;\n;\" class=\"fa fa-star\" aria-hidden=\"true\"></i>\n";
                    }
                    else
                    {
                        star += "<i class=\"fa fa-star-o\" aria-hidden=\"true\"></i>\n";
                    }
                }
                html += " <div  class=\"comment mt-4 text-justify\">\n" +
                        "                            <img src=\"https://i.imgur.com/yTFUilP.jpg\" alt=\"\" class=\"rounded-circle\" width=\"40\"\n" +
                        "                                 height=\"40\">\n" +
                        "                            <h4>"+ list.getFullName() +"</h4>\n" +
                        "                            <span>"+ list.getDate() +"</span>\n" +
                        "                            <br>\n" +
                        "                            <p>"+ star+"</p>\n" +
                        "                            <p>"+ list.getComment() +"</p>\n" +
                        "                        </div>";
            }

            response.setContentType("text/html; charset=UTF-8");
            response.getWriter().write(html);


    }
}
