<div id="sidebar" class="active">
  <div class="sidebar-wrapper active">
    <div class="sidebar-header">
      <div class="d-flex justify-content-between">
        <div class="logo">
          <a href="index.jsp"><img src="assets/images/logo/logo.png" alt="Logo" srcset=""></a>
        </div>
        <div class="toggler">
          <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
        </div>
      </div>
    </div>
    <div class="sidebar-menu">
      <ul class="menu">
        <li class="sidebar-title">Menu</li>

        <li class="sidebar-item">
          <a href="index.jsp" class='sidebar-link'>
            <i class="bi bi-grid-fill"></i>
            <span>Dashboard</span>
          </a>
        </li>
        <li class="sidebar-item  has-sub">
          <a href="#" class='sidebar-link'>
            <i class="fa fa-film" aria-hidden="true"></i>
            <span>Movie</span>
          </a>
          <ul class="submenu ">
            <li class="submenu-item ">
              <a href="movie_manager.jsp">Movie Manager</a>
            </li>
            <li class="submenu-item ">
              <a href="new_movie.jsp">Add movie</a>
            </li>
          </ul>
        </li>
        <li class="sidebar-item  has-sub">
          <a href="#" class='sidebar-link'>
            <i class="bi bi-stack"></i>
            <span>Tikets</span>
          </a>
          <ul class="submenu ">
            <li class="submenu-item ">
              <a href="ticket_manager.jsp">Ticket Manager</a>
            </li>
            <li class="submenu-item ">
              <a href="ticket_sold.jsp">Tickets Sold</a>
            </li>
          </ul>
        </li>
        <li class="sidebar-item">
          <a href="movie_manager.jsp" class='sidebar-link'>
            <i class="fa fa-calendar" aria-hidden="true"></i>
            <span>Event</span>
          </a>
        </li>
        <li class="sidebar-item">
          <a href="movie_manager.jsp" class='sidebar-link'>
            <i class="fa fa-users" aria-hidden="true"></i>
            <span>Customer</span>
          </a>
        </li>
        <li class="sidebar-item">
         <a href="/admin/statistic" class='sidebar-link'>
           <i class="fa fa-bar-chart" aria-hidden="true"></i>
            <span>Statistic</span>
         </a>
        </li>
      </ul>
    </div>
    <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
  </div>
</div>