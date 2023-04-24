<%@ page import="com.kltn1612.kltn.daos.TheaterDao" %>
<%@ page import="com.kltn1612.kltn.db.DBConnect" %>
<%@ page import="com.kltn1612.kltn.entity.Theater" %>
<%@ page import="java.util.List" %>
<%@ page import="com.kltn1612.kltn.daos.MovieDao" %>
<%@ page import="com.kltn1612.kltn.entity.Movie" %>
<%@ page import="com.kltn1612.kltn.daos.TicketDao" %>
<%@ page import="com.kltn1612.kltn.entity.Ticket" %>
<%@ page import="com.kltn1612.kltn.entity.TicketDetail" %>
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
    <%
        int id = Integer.parseInt(request.getParameter("id"));
        TicketDao ticketDao = new TicketDao(DBConnect.getConn());
        TicketDetail ticket= ticketDao.getTicketById(id);
    %>
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
                                    <form class="form form-horizontal" method="post" action="update_ticket">
                                        <div class="form-body">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <label>Name</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="text" id="name" class="form-control"
                                                           name="name" value="<%= ticket.getTicketName() %>" placeholder="Name">
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Price</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="number" id="price" class="form-control"
                                                           name="price" value="<%= ticket.getPrice() %>" placeholder="Price">
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Theater</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <select class="form-select" id="theater" name="theater">
                                                        <option selected ><%= ticket.getThearerName() %></option>
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
                                                        <option selected ><%= ticket.getMovieName() %></option>
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
                                                    <input type="time" id="time_ticket" value="<%= ticket.getTicketTime() %>" class="form-control"
                                                           name="time_ticket" placeholder="Time of tickets">
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Date of tickets</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="date" id="date_ticket" value="<%= ticket.getTicketDate() %>" class="form-control"
                                                           name="date_ticket" placeholder="Date of tickets">
                                                </div>
                                                <input type="hidden" value="<%= ticket.getTicketId() %>" name="ticket_id">
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