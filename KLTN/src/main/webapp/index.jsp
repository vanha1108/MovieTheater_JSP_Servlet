<%@ page import="com.kltn1612.kltn.daos.MovieDao" %>
<%@ page import="com.kltn1612.kltn.db.DBConnect" %>
<%@ page import="com.kltn1612.kltn.entity.Movie" %>
<%@ page import="java.util.List" %>
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
</head>

<body>
<!-- Navbar Start -->
<%@include file="../component/navbar.jsp" %>
<!-- Navbar End -->
<!-- Main News Slider Start -->
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-7 px-0">
            <div class="owl-carousel main-carousel position-relative">
                <div class="position-relative overflow-hidden" style="height: 500px;">
                    <img class="img-fluid h-100"
                         src="img/thor_love_and_thunder__2022__textless__4_wallpaper_by_mintmovi3_df616wu-fullview.png"
                         style="object-fit: cover;">
                    <div class="overlay">
                        <div class="mb-2">
                            <a class="text-white" href="">2023-03-18</a>
                        </div>
                        <a class="h2 m-0 text-white text-uppercase font-weight-bold" href="">A movie about two friends
                            who first met at the age of 13, looking back on the nature of their relationship</a>
                    </div>
                </div>
                <div class="position-relative overflow-hidden" style="height: 500px;">
                    <img class="img-fluid h-100" src="img/phim-bo-gia-tran-thanh-viet-nam.png"
                         style="object-fit: cover;">
                    <div class="overlay">
                        <div class="mb-2">
                            <a class="text-white" href="">2023-03-18</a>
                        </div>
                        <a class="h2 m-0 text-white text-uppercase font-weight-bold" href="">Animated film based on the
                            world of Super Mario Bros.</a>
                    </div>
                </div>
                <div class="position-relative overflow-hidden" style="height: 500px;">
                    <img class="img-fluid h-100" src="img/img20171116100221458.png" style="object-fit: cover;">
                    <div class="overlay">
                        <div class="mb-2">
                            <a class="text-white" href="">2023-03-18</a>
                        </div>
                        <a class="h2 m-0 text-white text-uppercase font-weight-bold" href="">A traditional same sex
                            marriage between a human and a ghost</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-5 px-0">
            <div class="row mx-0">
                <div class="col-md-6 px-0">
                    <div class="position-relative overflow-hidden" style="height: 250px;">
                        <img class="img-fluid w-100 h-100" src="img/images15.png" style="object-fit: cover;">
                        <div class="overlay">
                            <div class="mb-2">
                                <a class="text-white" href=""><small>Jan 01, 2045</small></a>
                            </div>
                            <a class="h6 m-0 text-white text-uppercase font-weight-semi-bold" href="">Suzume, 17, lost
                                her mother as a little girl. On her way to school, she meets a mysterious young man</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 px-0">
                    <div class="position-relative overflow-hidden" style="height: 250px;">
                        <img class="img-fluid w-100 h-100" src="img/1gtr8Js6yS7gWrQylbIK4sGQGih.png"
                             style="object-fit: cover;">
                        <div class="overlay">
                            <div class="mb-2">
                                <a class="text-white" href=""><small>Jan 01, 2045</small></a>
                            </div>
                            <a class="h6 m-0 text-white text-uppercase font-weight-semi-bold" href="">On August 24,
                                1981, the newlyweds Larisa and Vladimir Savitsky stepped on board the plane following
                                the flight Komsomolsk-on-Amur - Blagoveshchensk</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 px-0">
                    <div class="position-relative overflow-hidden" style="height: 250px;">
                        <img class="img-fluid w-100 h-100" src="img/phim-chieu-rap-viet-nam-9.png"
                             style="object-fit: cover;">
                        <div class="overlay">
                            <div class="mb-2">
                                <a class="text-white" href=""><small>Jan 01, 2045</small></a>
                            </div>
                            <a class="h6 m-0 text-white text-uppercase font-weight-semi-bold" href="">Takes place in the
                                world of international spies and elite assassins. In this world of contract killers</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 px-0">
                    <div class="position-relative overflow-hidden" style="height: 250px;">
                        <img class="img-fluid w-100 h-100" src="img/maxresdefaultfff.png" style="object-fit: cover;">
                        <div class="overlay">
                            <div class="mb-2">
                                <a class="text-white" href=""><small>Jan 01, 2045</small></a>
                            </div>
                            <a class="h6 m-0 text-white text-uppercase font-weight-semi-bold" href="">Lorem ipsum dolor
                                sit amet elit...</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Main News Slider End -->


<!-- Breaking News Start -->
<div class="container-fluid bg-dark py-3 mb-3">
    <div class="container">
        <div class="row align-items-center bg-dark">
            <div class="col-12">
                <div class="d-flex justify-content-between">
                    <div class="bg-primary text-dark text-center font-weight-medium py-2" style="width: 170px;">Breaking
                        News
                    </div>
                    <div class="owl-carousel tranding-carousel position-relative d-inline-flex align-items-center ml-3"
                         style="width: calc(100% - 170px); padding-right: 90px;">
                        <div class="text-truncate"><a class="text-white text-uppercase font-weight-semi-bold" href="">Suzume,
                            17, lost her mother as a little girl. On her way to school, she meets a mysterious young
                            man</a></div>
                        <div class="text-truncate"><a class="text-white text-uppercase font-weight-semi-bold" href="">Takes
                            place in the world of international spies and elite assassins. In this world of contract
                            killers</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breaking News End -->


<!-- upcoming movie Slider Start -->
<div class="container-fluid pt-5 mb-3">
    <div class="container">
        <div class="section-title">
            <h4 class="m-0 text-uppercase font-weight-bold">upcoming movie</h4>
        </div>
        <div class="owl-carousel news-carousel carousel-item-4 position-relative">
            <%
                MovieDao movieDao = new MovieDao(DBConnect.getConn());
                List<Movie> list = movieDao.getAllMovieListPresent();
                for (Movie movie : list) {
            %>
            <div class="position-relative overflow-hidden" style="height: 300px;">
                <img class="img-fluid h-100" src="img/<%=movie.getImage()%>" style="object-fit: cover;">
                <div class="overlay">
                    <div class="mb-2">
                        <a class="text-white" href=""><small><%=movie.getReleaseDate()%>
                        </small></a>
                    </div>
                    <a class="h6 m-0 text-white text-uppercase font-weight-semi-bold"
                       href="showtimes.jsp?id=<%=movie.getId()%>"><%=movie.getDescription().substring(0, 40)%>....</a>
                </div>
            </div>
            <%
                }
            %>
        </div>
    </div>
</div>
<!-- upcoming movie Slider End -->


<!-- News With Sidebar Start -->
<div class="container-fluid">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="row">
                    <div class="col-12">
                        <div class="section-title">
                            <h4 class="m-0 text-uppercase font-weight-bold">Latest Updates</h4>
                        </div>
                    </div>
                    <%
                        List<Movie> listMovie = movieDao.getAllMovieListNextMonth();
                        for (Movie movie : listMovie) {
                    %>
                    <div class="col-lg-6">
                        <div class="position-relative mb-3">
                            <img class="img-fluid w-100" src="img/<%=movie.getImage()%>" style="height: 300px;">
                            <div class="bg-white border border-top-0 p-4">
                                <div class="mb-2">
                                    <a class="text-body"
                                       href="showtimes.jsp?id=<%=movie.getId()%>"><small><%=movie.getReleaseDate()%>
                                    </small></a>
                                </div>
                                <a class="h6 d-block mb-3 text-secondary text-uppercase font-weight-bold"
                                   href="showtimes.jsp?id=<%=movie.getId()%>"><%=movie.getName()%>
                                </a>
                                <p class="m-0"><%=movie.getDescription().substring(0, 80)%>....</p>
                            </div>
                            <div class="d-flex justify-content-between bg-white border border-top-0 p-4">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle mr-2" src="img/user.jpg" width="25" height="25" alt="">
                                    <small>John Doe</small>
                                </div>
                                <div class="d-flex align-items-center">
                                    <small class="ml-3"><i class="far fa-eye mr-2"></i>12345</small>
                                    <small class="ml-3"><i class="far fa-comment mr-2"></i>123</small>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                    <div class="col-lg-12">
                        <a href="#" class="btn btn-warning btn-block btn-view-more mb-3">
                            View more
                        </a>
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
                        <div class="d-flex align-items-center bg-white mb-3" style="height: 110px;">
                            <img class="img-fluid" src="img/news-110x110-1.jpg" alt="">
                            <div class="w-100 h-100 px-3 d-flex flex-column justify-content-center border border-left-0">
                                <div class="mb-2">
                                    <a class="badge badge-primary text-uppercase font-weight-semi-bold p-1 mr-2"
                                       href=""></a>
                                    <a class="text-body" href=""><small>Jan 01, 2045</small></a>
                                </div>
                                <a class="h6 m-0 text-secondary text-uppercase font-weight-bold" href="">Lorem ipsum
                                    dolor sit amet elit...</a>
                            </div>
                        </div>
                        <div class="d-flex align-items-center bg-white mb-3" style="height: 110px;">
                            <img class="img-fluid" src="img/news-110x110-2.jpg" alt="">
                            <div class="w-100 h-100 px-3 d-flex flex-column justify-content-center border border-left-0">
                                <div class="mb-2">
                                    <a class="badge badge-primary text-uppercase font-weight-semi-bold p-1 mr-2"
                                       href=""></a>
                                    <a class="text-body" href=""><small>Jan 01, 2045</small></a>
                                </div>
                                <a class="h6 m-0 text-secondary text-uppercase font-weight-bold" href="">Lorem ipsum
                                    dolor sit amet elit...</a>
                            </div>
                        </div>
                        <div class="d-flex align-items-center bg-white mb-3" style="height: 110px;">
                            <img class="img-fluid" src="img/news-110x110-3.jpg" alt="">
                            <div class="w-100 h-100 px-3 d-flex flex-column justify-content-center border border-left-0">
                                <div class="mb-2">
                                    <a class="badge badge-primary text-uppercase font-weight-semi-bold p-1 mr-2"
                                       href=""></a>
                                    <a class="text-body" href=""><small>Jan 01, 2045</small></a>
                                </div>
                                <a class="h6 m-0 text-secondary text-uppercase font-weight-bold" href="">Lorem ipsum
                                    dolor sit amet elit...</a>
                            </div>
                        </div>
                        <div class="d-flex align-items-center bg-white mb-3" style="height: 110px;">
                            <img class="img-fluid" src="img/news-110x110-4.jpg" alt="">
                            <div class="w-100 h-100 px-3 d-flex flex-column justify-content-center border border-left-0">
                                <div class="mb-2">
                                    <a class="badge badge-primary text-uppercase font-weight-semi-bold p-1 mr-2"
                                       href=""></a>
                                    <a class="text-body" href=""><small>Jan 01, 2045</small></a>
                                </div>
                                <a class="h6 m-0 text-secondary text-uppercase font-weight-bold" href="">Lorem ipsum
                                    dolor sit amet elit...</a>
                            </div>
                        </div>
                        <div class="d-flex align-items-center bg-white mb-3" style="height: 110px;">
                            <img class="img-fluid" src="img/news-110x110-5.jpg" alt="">
                            <div class="w-100 h-100 px-3 d-flex flex-column justify-content-center border border-left-0">
                                <div class="mb-2">
                                    <a class="badge badge-primary text-uppercase font-weight-semi-bold p-1 mr-2"
                                       href=""></a>
                                    <a class="text-body" href=""><small>Jan 01, 2045</small></a>
                                </div>
                                <a class="h6 m-0 text-secondary text-uppercase font-weight-bold" href="">Lorem ipsum
                                    dolor sit amet elit...</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Popular News End -->
            </div>
        </div>
    </div>
</div>
<!-- News With Sidebar End -->
<%@include file="../component/footer.jsp" %>