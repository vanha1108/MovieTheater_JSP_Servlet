<%@ page import="com.kltn1612.kltn.daos.MovieDao" %>
<%@ page import="com.kltn1612.kltn.db.DBConnect" %>
<%@ page import="com.kltn1612.kltn.entity.Movie" %>
<%@ page import="java.util.List" %>
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
    <%@include file="../component/allcss.jsp" %>
    <style>
        .card {
            margin-bottom: 1.5rem;
            border-color: #edf2f9;
            box-shadow: 0 0.75rem 1.5rem rgba(18, 38, 63, .03);
            position: relative;
            display: flex;
            flex-direction: column;
            min-width: 0;
            word-wrap: break-word;
            background-color: #fff;
            background-clip: border-box;
            border: 1px solid #edf2f9;
            border-radius: 0.5rem;
        }
    </style>
</head>

<body>
<!-- Navbar Start -->
<%@include file="../component/navbar.jsp" %>
<div class="tix-bg" style="background: #842029">
    <div class="container pt-4 pb-4">
        <div class="text-center">
            <h1 class="mb-3 text-white">
                Đánh giá phim
            </h1>
            <div class="text-white mt-0 description">
                Góc nhìn chân thực, khách quan nhất về các bộ phim
            </div>
        </div>
    </div>
</div>
<div class="container-fluid" style="margin-top: 30px;">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="card card-sm activity">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <p class="text-muted small mb-0">
                                    <a class="avatar is-phone-verification-needed avatar-xs" href="#">
                                        <img width="20" height="20"
                                             src="https://cdn.moveek.com/bundles/ornweb/img/no-avatar.png"
                                             alt="Nguyễn Trương Hoàng Minh" class="avatar-img rounded-circle">
                                    </a>
                                    <a href="#" class="text-dark font-weight-bold is-phone-verification-needed">
                                        Nguyễn Trương Hoàng Minh
                                    </a> đã đánh giá <span class="text-dark">10</span> <i style="color: #f6c343!important" class="fa fa-star" aria-hidden="true"></i>
                                    cho <a href="/phim/lat-mat-6-tam-ve-dinh-menh/" class="text-dark font-weight-bold">Lật
                                    Mặt 6: Tấm Vé Định Mệnh</a>
                                </p>
                            </div>
                            <div class="col-auto">
                                <p class="text-muted small mb-0">
                                    <time datetime="2023-04-29 19:43:39">37 phút trước</time>
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">

                <!-- Popular News Start -->
                <div class="mb-3">
                    <div class="section-title mb-0">
                        <h4 class="m-0 text-uppercase font-weight-bold">Movie Reviews</h4>
                    </div>
                    <div class="bg-white border border-top-0 p-3">
                        <%
                            MovieDao movieDao = new MovieDao(DBConnect.getConn());
                            List<Movie> listMovieLastMonth = movieDao.getAllMovieListLastMonth();
                            for (Movie movie : listMovieLastMonth) {
                        %>
                        <div class="d-flex align-items-center bg-white mb-3" style="height: 110px;">
                            <img class="img-fluid" style="height: 80px !important; width: 100px !important;" src="img/<%=movie.getImage()%>" alt="">
                            <div class="w-100 h-100 px-3 d-flex flex-column justify-content-center border border-left-0">
                                <div class="mb-2">
                                    <a class="badge badge-primary text-uppercase font-weight-semi-bold p-1 mr-2"
                                       href=""></a>
                                    <a class="text-body" href=""><small><%=movie.getReleaseDate()%></small></a>
                                </div>
                                <a class="h6 m-0 text-secondary text-uppercase font-weight-bold" href="review.jsp?id=<%=movie.getId()%>"><%=movie.getDescription().substring(0, 40)%>....</a>
                            </div>
                        </div>
                        <%
                            }
                        %>
                    </div>
                </div>
                <!-- Popular News End -->
            </div>
        </div>
    </div>
</div>
<%@include file="../component/footer.jsp" %>