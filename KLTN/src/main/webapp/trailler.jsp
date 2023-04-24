<%@ page import="com.kltn1612.kltn.db.DBConnect" %>
<%@ page import="com.kltn1612.kltn.entity.Movie" %>
<%@ page import="com.kltn1612.kltn.daos.MovieDao" %>
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
                    <a href="showtimes.jsp?id=<%=movie.getId()%>" class="nav-link text-center">
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
                       class="nav-link text-center active">
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
            <div id="showtimes">
                <div class="card">
                    <div class="list-group list-group-flush">
                        <div class="list-group collapse show">
                            <iframe width="729" height="500" src="<%=movie.getTrailer()%>" frameborder="0" allowfullscreen="" style="display: inline-block;"></iframe>
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