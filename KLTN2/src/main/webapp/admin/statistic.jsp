<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DataTable - Mazer Admin Dashboard</title>

    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/vendors/simple-datatables/style.css">

    <link rel="stylesheet" href="assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
    <link rel="stylesheet" href="assets/vendors/bootstrap-icons/bootstrap-icons.css">
    <link rel="stylesheet" href="assets/css/app.css">
    <link rel="shortcut icon" href="assets/images/favicon.svg" type="image/x-icon">
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
            <div class="page-title">
                <div class="row">

                    <div class="col-12 col-md-6 order-md-1 order-last">
                        <form className="row g-3" onsubmit="return checkDate()" action="/admin/statistic" method="post">
                            <div className="col-auto">
                                <label htmlFor="fromDate" className="col-form-label">
                                    From date:
                                </label>
                            </div>
                            <div className="col-auto">
                                <input
                                        type="date"
                                        id="fromDate"
                                        className="form-control"
                                        name="fromDate"
                                />
                            </div>
                            <div className="col-auto">
                                <label htmlFor="toDate" className="col-form-label">
                                    To date:
                                </label>
                            </div>
                            <div className="col-auto">
                                <input
                                        type="date"
                                        id="toDate"
                                        className="form-control"
                                        name="toDate"
                                />
                            </div>
                            </br>
                            <div className="col-auto">
                                <button type="submit" className="btn btn-primary mb-3">
                                    Statistic
                                </button>
                            </div>
                            </br>
                        </form>
                    </div>

                    <div class="col-12 col-md-6 order-md-2 order-first">
                        <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                                <li class="breadcrumb-item active" aria-current="page">DataTable</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
            <section class="section">
                <div class="card">
                    <div class="card-header">
                        Statistic Table
                    </div>
                    <div class="card-body">
                        <table class="table table-striped" id="table1">
                            <thead>
                            <tr>
                                <th>Theater name</th>
                                <th>Movie name</th>
                                <th>Count ticket</th>
                                <th>Date</th>
                                <th>Total price</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="statistic" items="${statistics}">
                                <tr>
                                    <th>${statistic.theaterName}</th>
                                    <th>${statistic.movieName}</th>
                                    <th>${statistic.countTicket}</th>
                                    <th>${statistic.dateTicket}</th>
                                    <th>${statistic.totalPrice}</th>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>
        </div>

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
<script src="assets/vendors/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/vendors/simple-datatables/simple-datatables.js"></script>
<script src="assets/js/main.js"></script>
<script>
    function checkDate() {
        var fromDate = document.getElementById("fromDate").value;
        var toDate = document.getElementById("toDate").value;
        if (Date.parse(fromDate) > Date.parse(toDate)) {
            alert("From date must be less than to date!");
            return false;
        }
        return true;
    }

    function getLastDayOfMonth(year, month) {
        return new Date(Date.UTC(year, month + 1, 0));
    }

    function getFirstDayOfMonth(year, month) {
        return new Date(Date.UTC(year, month, 1));
    }

    var now = new Date();
    var month = now.getMonth();
    var year = now.getFullYear();
    var firstDay = getFirstDayOfMonth(year, month);
    var lastDay = getLastDayOfMonth(year, month);
    var fromDate = year + "-" + month + "-" + firstDay;
    var toDate = year + "-" + month + "-" + lastDay;
    var date1 = new Date(fromDate);
    var date2 = new Date(toDate);
    console.log("FD: " + fromDate);
    console.log("TD: " + toDate);

    document.getElementById('fromDate').valueAsDate = firstDay;
    document.getElementById('toDate').valueAsDate = lastDay;
</script>
</body>
</html>