<%@ page import="com.kltn1612.kltn.daos.ProvinceDao" %>
<%@ page import="com.kltn1612.kltn.db.DBConnect" %>
<%@ page import="java.util.List" %>
<%@ page import="com.kltn1612.kltn.entity.Province" %>
<%@ page import="com.kltn1612.kltn.daos.TheaterDao" %>
<%@ page import="com.kltn1612.kltn.entity.Theater" %>
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
                                    <form class="form form-horizontal" method="post" action="add_movie"
                                          enctype="multipart/form-data">
                                        <div class="form-body">
                                            <div class="row">
                                                <div class="col-md-4">
                                                    <label>Name</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="text" id="name" class="form-control"
                                                           name="name" placeholder="Name">
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Imgae</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="file" id="file" class="form-control"
                                                           name="file">
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Trailer</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="text" id="trailer" class="form-control"
                                                           name="trailer" placeholder="Trailer">
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Description</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <textarea class="form-control" id="description" name="description" rows="3"
                                                              placeholder="Description"></textarea>
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Premiere Date</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="date" id="release_date" class="form-control"
                                                           name="release_date" placeholder="Description">
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Duration(minute)</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="number" id="duration" class="form-control"
                                                           name="duration" placeholder="Duration">
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Age retricted</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="number" id="age_retricted" class="form-control"
                                                           name="age_retricted" placeholder="Age retricted">
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Actors</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="text" id="actors" class="form-control"
                                                           name="actors" placeholder="Actors">
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Directors</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="text" id="directors" class="form-control"
                                                           name="directors" placeholder="Drectors">
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Theater</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <select class="form-select" id="theater" name="theater" multiple="multiple">
                                                        <%
                                                            TheaterDao TheaterDao = new TheaterDao(DBConnect.getConn());
                                                            List<Theater> list = TheaterDao.getAllTheaterList();
                                                            for (Theater theater : list) {
                                                        %>
                                                        <option value="<%= theater.getId() %>"><%= theater.getName() %>
                                                        </option>
                                                        <%
                                                            }
                                                        %>
                                                    </select>
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