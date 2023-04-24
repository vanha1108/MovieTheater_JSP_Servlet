<%@ page import="com.kltn1612.kltn.db.DBConnect" %>
<%@ page import="java.util.List" %>
<%@ page import="com.kltn1612.kltn.daos.TicketDao" %>
<%@ page import="com.kltn1612.kltn.entity.TicketDetail" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DataTable - Mazer Admin Dashboard</title>

  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@300;400;600;700;800&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="assets/css/bootstrap.css">

  <link rel="stylesheet" href="assets/vendors/simple-datatables/style.css">

  <link rel="stylesheet" href="assets/vendors/perfect-scrollbar/perfect-scrollbar.css">
  <link rel="stylesheet" href="assets/vendors/bootstrap-icons/bootstrap-icons.css">
  <link rel="stylesheet" href="assets/css/app.css">
  <link rel="shortcut icon" href="assets/images/favicon.svg" type="image/x-icon">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<div id="app">
  <%@include file="component/navbar.jsp"%>
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
            <h3>Ticket Manager</h3>
            <a href="new_ticket.jsp"  class="btn btn-primary" style="margin-bottom: 20px;">Add Ticket</a>
          </div>
          <div class="col-12 col-md-6 order-md-2 order-first">
            <nav aria-label="breadcrumb" class="breadcrumb-header float-start float-lg-end">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
                <li class="breadcrumb-item active" aria-current="page">Ticket manager</li>
              </ol>
            </nav>
          </div>
        </div>
      </div>
      <section class="section">
        <div class="card">
          <div class="card-header">
            Simple Datatable
          </div>
          <div class="card-body">
            <table class="table table-striped" id="table1">
              <thead>
              <tr>
                <th>Theater</th>
                <th>Movie</th>
                <th>Price</th>
                <th>Rooms</th>
                <th>Time</th>
                <th>Action</th>
              </tr>
              </thead>
              <tbody>
              <%
                TicketDao ticketDao = new TicketDao(DBConnect.getConn());
                List<TicketDetail> list = ticketDao.getAllTicketList();
                for (TicketDetail ticketDetail : list) {
              %>
              <tr>
                <td><%= ticketDetail.getThearerName() %></td>
                <td><%= ticketDetail.getMovieName() %></td>
                <td><%= ticketDetail.getPrice() %></td>
                <td><%= ticketDetail.getRoom() %></td>
                <td><%= ticketDetail.getTicketTime() %> / <%= ticketDetail.getTicketDate() %></td>
                <td>
                  <a href="edit_ticket.jsp?id=<%= ticketDetail.getTicketId() %>" ><i style="cursor: pointer" class="fa fa-pencil-square-o" aria-hidden="true"></i></a>
                  <i style="cursor: pointer" class="fa fa-trash-o" aria-hidden="true"></i>
                </td>
              </tr>
              <%
                }
              %>
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
<script>
  // Simple Datatable
  let table1 = document.querySelector('#table1');
  let dataTable = new simpleDatatables.DataTable(table1);
</script>

<script src="assets/js/main.js"></script>
</body>

</html>