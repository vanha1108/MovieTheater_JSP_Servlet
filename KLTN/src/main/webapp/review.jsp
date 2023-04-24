<%@ page import="com.kltn1612.kltn.daos.MovieDao" %>
<%@ page import="com.kltn1612.kltn.entity.Movie" %>
<%@ page import="com.kltn1612.kltn.db.DBConnect" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page session="true" %>
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
    <style>.navbar-nav {
        width: 100%;
    }

    @media (min-width: 568px) {
        .end {
            margin-left: auto;
        }
    }

    @media (max-width: 768px) {
        #post {
            width: 100%;
        }
    }

    #clicked {
        padding-top: 1px;
        padding-bottom: 1px;
        text-align: center;
        width: 100%;
        background-color: #ecb21f;
        border-color: #a88734 #9c7e31 #846a29;
        color: black;
        border-width: 1px;
        border-style: solid;
        border-radius: 13px;
    }

    #profile {
        background-color: unset;

    }

    #post {
        margin: 10px;
        padding: 6px;
        padding-top: 2px;
        padding-bottom: 2px;
        text-align: center;
        background-color: #ecb21f;
        border-color: #a88734 #9c7e31 #846a29;
        color: black;
        border-width: 1px;
        border-style: solid;
        border-radius: 13px;
        width: 50%;
    }

    body {
        background-color: black;
    }

    #nav-items li a, #profile {
        text-decoration: none;
        color: rgb(224, 219, 219);
        background-color: black;
    }


    .comments {
        margin-top: 5%;
        margin-left: 20px;
    }

    .darker {
        border: 1px solid #ecb21f;
        background-color: black;
        float: right;
        border-radius: 5px;
        padding-left: 40px;
        padding-right: 30px;
        padding-top: 10px;
    }

    .comment {
        border: 1px solid rgba(16, 46, 46, 1);
        background-color: rgba(16, 46, 46, 0.973);
        float: left;
        border-radius: 5px;
        padding-left: 40px;
        padding-right: 30px;
        padding-top: 10px;

    }

    .comment h4, .comment span, .darker h4, .darker span {
        display: inline;
    }

    .comment p, .comment span, .darker p, .darker span {
        color: rgb(184, 183, 183);
    }

    h1, h4 {
        color: white;
        font-weight: bold;
    }

    label {
        color: rgb(212, 208, 208);
    }

    #align-form {
        margin-top: 20px;
    }

    .form-group p a {
        color: white;
    }

    #checkbx {
        background-color: black;
    }

    #darker img {
        margin-right: 15px;
        position: static;
    }

    .form-group input, .form-group textarea {
        background-color: black;
        border: 1px solid rgba(16, 46, 46, 1);
        border-radius: 12px;
    }

    form {
        border: 1px solid rgba(16, 46, 46, 1);
        background-color: rgba(16, 46, 46, 0.973);
        border-radius: 5px;
        padding: 20px;
    }</style>
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
                    <a href="showtimes.jsp?id=<%=movie.getId()%>" class="nav-link text-center">
                        Tickets
                    </a>
                </li>
                <li class="nav-item">
                    <a href="review.jsp?id=<%=movie.getId()%>" class="nav-link text-center active">
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
<!-- Navbar Start -->
<!-- Navbar End -->
<div class="main-content">
    <div class="container">
        <!-- Main Body -->
        <section style="margin-top: 40px;">
            <div class="container">
                <div class="row">
                    <div class="col-sm-5 col-md-6 col-12 pb-4">
                        <div class="comment mt-4 text-justify float-left">
                            <img src="https://i.imgur.com/yTFUilP.jpg" alt="" class="rounded-circle" width="40"
                                 height="40">
                            <h4>Jhon Doe</h4>
                            <span>- 20 October, 2018</span>
                            <br>
                            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Accusamus numquam assumenda hic
                                aliquam vero sequi velit molestias doloremque molestiae dicta?</p>
                        </div>
                        <div class="text-justify darker mt-4 float-right">
                            <img src="https://i.imgur.com/CFpa3nK.jpg" alt="" class="rounded-circle" width="40"
                                 height="40">
                            <h4>Rob Simpson</h4>
                            <span>- 20 October, 2018</span>
                            <br>
                            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Accusamus numquam assumenda hic
                                aliquam vero sequi velit molestias doloremque molestiae dicta?</p>
                        </div>
                        <div class="comment mt-4 text-justify">
                            <img src="https://i.imgur.com/yTFUilP.jpg" alt="" class="rounded-circle" width="40"
                                 height="40">
                            <h4>Jhon Doe</h4>
                            <span>- 20 October, 2018</span>
                            <br>
                            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Accusamus numquam assumenda hic
                                aliquam vero sequi velit molestias doloremque molestiae dicta?</p>
                        </div>
                        <div class="darker mt-4 text-justify">
                            <img src="https://i.imgur.com/CFpa3nK.jpg" alt="" class="rounded-circle" width="40"
                                 height="40">
                            <h4>Rob Simpson</h4>
                            <span>- 20 October, 2018</span>
                            <br>
                            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Accusamus numquam assumenda hic
                                aliquam vero sequi velit molestias doloremque molestiae dicta?</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-5 col-sm-4 offset-md-1 offset-sm-1 col-12 mt-4"
                         style="margin-top: 100px;">
                        <form id="algin-form">
                            <div class="form-group">
                                <h4>Leave a comment</h4>
                                <label for="message">Message</label>
                                <textarea name="msg" id="" msg cols="30" rows="5" class="form-control"
                                          style="background-color: black;"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="name">Name</label>
                                <input type="text" name="name" id="fullname" class="form-control">
                            </div>
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="text" name="email" id="email" class="form-control">
                            </div>
                            <div class="form-group">
                                <p class="text-secondary">If you have a <a href="#" class="alert-link">gravatar
                                    account</a> your address will be used to display your profile picture.</p>
                            </div>
                            <div class="form-inline">
                                <input type="checkbox" name="check" id="checkbx" class="mr-1">
                                <label for="subscribe">Subscribe me to the newlettter</label>
                            </div>
                            <div class="form-group">
                                <button type="button" id="post" class="btn">Post Comment</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </div>

<%@include file="../component/footer.jsp" %>
