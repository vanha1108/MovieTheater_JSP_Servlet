<%@ page import="com.kltn1612.kltn.daos.TheaterDao" %>
<%@ page import="com.kltn1612.kltn.db.DBConnect" %>
<%@ page import="com.kltn1612.kltn.entity.Theater" %>
<%@ page import="java.util.List" %>
<%@ page import="com.kltn1612.kltn.daos.MovieDao" %>
<%@ page import="com.kltn1612.kltn.entity.Movie" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%@include file="component/allcss.jsp" %>
</head>

<body>
<div id="app">
    <%@include file="component/navbar.jsp" %>
    <div id="main">
        <header class="mb-3">
            <a href="#" class="burger-btn d-block d-xl-none">
                <i class="bi bi-justify fs-3"></i>
            </a>
        </header>

        <div class="page-heading">
            <h3>Profile Statistics</h3>
        </div>
        <div class="page-content">
            <section id="basic-horizontal-layouts">
                <div class="row match-height">
                    <div class="col-md-10 col-12">
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-title">Horizontal Form</h4>
                            </div>
                            <div class="card-content">
                                <div class="card-body">
                                    <form class="form form-horizontal" method="post" action="add_ticket">
                                        <div class="form-body">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <label>Price</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="number" id="price" class="form-control"
                                                           name="price" placeholder="Price">
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Room</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="number" id="room" class="form-control"
                                                           name="room" placeholder="Room">
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Theater</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <select class="form-select" id="theater" name="theater">
                                                        <option>Theater</option>
                                                        <%
                                                            TheaterDao theaterDao = new TheaterDao(DBConnect.getConn());
                                                            List<Theater> list = theaterDao.getAllTheaterList();
                                                            for (Theater theater : list) {
                                                        %>
                                                        <option value="<%= theater.getId() %>"><%= theater.getName() %>
                                                        </option>
                                                        <%
                                                            }
                                                        %>
                                                    </select>
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Movie</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <select class="form-select" id="movie" name="movie">
                                                        <option>Movie</option>
                                                        <%
                                                            MovieDao movieDao = new MovieDao(DBConnect.getConn());
                                                            List<Movie> listMovie = movieDao.getAllMovieList();
                                                            for (Movie movie : listMovie) {
                                                        %>
                                                        <option value="<%= movie.getId() %>"><%= movie.getName() %>
                                                        </option>
                                                        <%
                                                            }
                                                        %>
                                                    </select>
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Time of tickets</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="time" id="time_ticket" class="form-control"
                                                           name="time_ticket" placeholder="Time of tickets">
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Date of tickets</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="date" id="date_ticket" class="form-control"
                                                           name="date_ticket" placeholder="Date of tickets">
                                                </div>

                                                <div class="col-sm-12 d-flex justify-content-end">
                                                    <button type="submit"
                                                            class="btn btn-primary me-1 mb-1">Submit
                                                    </button>
                                                    <button type="reset"
                                                            class="btn btn-light-secondary me-1 mb-1">Reset
                                                    </button>
                                                    <div id="resultado2"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div id="ngaanc"></div>
        <footer>
            <div class="footer clearfix mb-0 text-muted">
                <div class="float-start">
                    <p>2021 &copy; Mazer</p>
                </div>
                <div class="float-end">
                    <p>Crafted with <span class="text-danger"><i class="bi bi-heart"></i></span> by <a
                            href="http://ahmadsaugi.com">A. Saugi</a></p>
                </div>
            </div>
        </footer>
    </div>
</div>
<%@include file="component/footer.jsp" %>
</body>
</html>