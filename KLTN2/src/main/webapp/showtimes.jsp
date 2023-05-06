<%@ page import="com.kltn1612.kltn.db.DBConnect" %>
<%@ page import="java.util.List" %>
<%@ page import="com.kltn1612.kltn.entity.Movie" %>
<%@ page import="com.kltn1612.kltn.daos.MovieDao" %>
<%@ page import="com.kltn1612.kltn.entity.Theater" %>
<%@ page import="com.kltn1612.kltn.daos.TheaterDao" %>
<%@ page import="com.kltn1612.kltn.daos.TicketDao" %>
<%@ page import="com.kltn1612.kltn.entity.Ticket" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>BizNews - Free News Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <%@include file="../component/allcss.jsp" %>
</head>

<body>
<%@include file="../component/navbar.jsp" %>
<!-- Navbar End -->
    <%
        int id = Integer.parseInt(request.getParameter("id"));
        MovieDao movieDao = new MovieDao(DBConnect.getConn());
        Movie movie= movieDao.getMovieById(id);
	%>
<input type="hidden" value="<%=id%>" name="id_movie" id="id_movie">
<div class="container-fluid p-0">
    <div class="bg-secondary">
        <div class="container pt-3 pb-3">
            <div class="row row-sm">
                <div class="d-none d-sm-block col-2">
                    <a href="/en/phim/phi-vu-toan-sao/" title="Operation Fortune: Ruse de Guerre">
                        <img src="img/<%=movie.getImage()%>" style="width: 164px; height: 246px;"/>
                    </a>
                </div>
                <div class="col-12 col-sm-10">
                    <div class="mb-3 text-center text-sm-left">
                        <h1 class="mb-0 text-truncate">
                            <a href="/en/phim/phi-vu-toan-sao/" title="Operation Fortune: Ruse de Guerre">
                                <%= movie.getName() %>
                            </a>
                        </h1>
                    </div>
                    <div class="row">
                        <div class="col-12 col-lg-7">
                            <p class="mb-3 text-justify"><%= movie.getDescription() %>
                            </p>

                            <div class="row mb-3">

                                <div class="col text-center text-sm-left">
                                    <strong>
                                        <i class="fa fa-calendar-o" aria-hidden="true"></i>
                                        <span class="d-none d-sm-inline-block"> Release Date</span>
                                    </strong><br>
                                    <span><%= movie.getReleaseDate() %></span>
                                </div>

                                <div class="col text-center text-sm-left">
                                    <strong>
                                        <i class="fa fa-clock-o" aria-hidden="true"></i>
                                        <span class="d-none d-sm-inline-block"> Duration</span>
                                    </strong><br>
                                    <span><%= movie.getDuration() %> minutes</span>
                                </div>

                                <div class="col text-center text-sm-left">
                                    <strong>
                                        <i class="fa fa-user" aria-hidden="true"></i>
                                        <span class="d-none d-sm-inline-block"> Age Restricted</span>
                                    </strong><br>
                                    <span><%= movie.getAgeRetricted() %></span>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-5">
                            <p class="mb-2">
                                <strong> Actors</strong><br>
                                <span>
                                        <a class="text-danger" href="/en/nghe-sy/jason-statham/" data-toggle="tooltip"
                                           title="" data-original-title="Orson Fortune"><%= movie.getActors() %></a>
                                    </span>
                            </p>

                            <p class="mb-2">
                                <strong> Directors</strong><br>
                                <span>
                                        <a class="text-danger"
                                           href="/en/nghe-sy/guy-ritchie/"><%= movie.getDirectors() %></a>
                                    </span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid p-0">
    <div class="bg-white border-bottom sticky-movie-bars" style="padding: 15px 0;">
        <div class="container">
            <ul class="nav nav-tabs border-bottom-0">
                <li class="nav-item">
                    <a href="showtimes.jsp?id=<%=movie.getId()%>" class="nav-link text-center active">
                        Tickets
                    </a>
                </li>
                <li class="nav-item">
                    <a href="review.jsp?id=<%=movie.getId()%>" class="nav-link text-center">
                        Reviews
                    </a>
                </li>
                <li class="nav-item d-none d-sm-block">
                    <a href="trailler.jsp?id=<%=movie.getId()%>"
                       class="nav-link text-center">
                        Trailer
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>
<div class="container mt-4">
    <div class="row">
        <div class="col-md-8">
            <h2 class="text-center">
                Online Tickets
            </h2>
            <div class="btn-group btn-block mb-3" id="dates">
                <%
                    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd ");
                    Calendar cal = Calendar.getInstance();
                    Date date = cal.getTime();
                    String[] days = new String[7];
                    days[0] = sdf.format(date);
                    for (int i = 1; i < 7; i++) {
                        cal.add(Calendar.DAY_OF_MONTH, 1);
                        date = cal.getTime();
                        days[i] = sdf.format(date);
                    }
                    for (int i = 0; i <= (days.length - 1); i++) {
                        if (i == 0) {
                %>
                <a class="get_date btn btn-light text-muted date active" data-date=<%=days[i]%>">
                    <%=days[i]%>
                </a>
                <%
                    }else{
                        %>
                        <a class=" get_date btn btn-light text-muted date" data-date=<%=days[i]%>">
                <%=days[i]%>
                </a>
                <%
                        }
                    }
                %>
            </div>
            <div id="showtimes">
                <div class="card">
                    <div class="list-group list-group-flush">
                        <div class="list-group collapse show" id="date_ticket">
                            <%
                                TheaterDao theaterDao = new TheaterDao(DBConnect.getConn());
                                List<Theater> list = theaterDao.getTheaterByMovieId(id);
                                TicketDao ticketDao = new TicketDao(DBConnect.getConn());
                                List<Ticket> tickets = ticketDao.getListByTheaterAndMovie(id);
                                for (Theater theater : list) {
                            %>
                            <div class="list-group-item btn-select-cinema">
                                <p style="font-weight: 900;"><%= theater.getName() %>
                                </p>
                                <p class="small text-muted mb-3"><%= theater.getAddress() + ", " + theater.getDistrict() + ", " + theater.getProvince() %>
                                </p>
                                <div class="showtimes loaded">
                                    <div class="mb-1">
                                        <label class="small mb-2 font-weight-bold d-block text-dark">
                                            2D Eng Sub
                                        </label>
                                        <%
                                            for (Ticket ticket : tickets) {
                                                if (ticket.getTheater() == theater.getId()) {
                                                    request.getSession().removeAttribute("id_ticket_click");
                                                    request.getSession().setAttribute("id_ticket_click", ticket.getId());
                                                    request.getSession().setAttribute("id_theater", ticket.getTheater());
                                        %>
                                        <a href="choose_chair.jsp?id=<%=ticket.getId()%>"
                                           class="btn btn-sm btn-showtime btn-outline-dark is-ticketing is-show-price">
                                            <span class="time"><%= ticket.getTimeTicket() %></span>
                                            <span class="amenity price"><%= ticket.getPrice() %>đ</span></a>
                                        <%
                                                }
                                            }
                                        %>
                                    </div>
                                </div>
                            </div>
                            <%
                                }
                            %>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="col-md-4">
        </div>
    </div>
</div>
<!-- Main News Slider End -->
<%@include file="../component/footer.jsp" %>
<script>
    $(document).ready(function () {
        $('.btn-group').on('click', 'a', function () {
            $('.btn-group a.active').removeClass('active');
            $(this).addClass('active');
        });
        var id_movie = $('#id_movie').val();
        $(".get_date").on('click', function () {
            $.ajax({
                type: 'POST',
                url: 'GetDateTicketAjax',
                crossDomain: true,
                data: {
                    get_date: $(this).attr('data-date'),
                    id_movie: id_movie
                },
                success: function (data) {
                    $("#date_ticket").html(data);
                    $(".alert-dark").remove();
                    if ($('.list-group-item').length > 0) {
                        $('.list-group-item').each(function () {
                            if ($('.list-group-item .amenity').length == 0) {
                                $(".list-group-item").hide();
                                $(".alert-dark").remove();
                                $("#showtimes").append("<div class='alert alert-dark'>No Tickets </div>");
                            }
                        });
                    }
                }, error: function (data) {
                    alert(data);
                }
            });
        });
        $('.list-group-item').each(function () {
            if ($('.list-group-item .amenity').length == 0) {
                $(".list-group-item").hide();
                $(".alert-dark").remove();
                $("#showtimes").append("<div class='alert alert-dark'>No Tickets </div>");
            }
        });
    });
</script>