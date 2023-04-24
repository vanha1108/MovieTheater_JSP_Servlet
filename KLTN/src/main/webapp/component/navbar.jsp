<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container-fluid d-none d-lg-block">
    <div class="row align-items-center bg-dark px-lg-5">
        <div class="col-lg-9">
            <nav class="navbar navbar-expand-sm bg-dark p-0">
                <ul class="navbar-nav ml-n2">
                    <li class="nav-item border-right border-secondary">
                        <a class="nav-link text-body small" href="#">Monday, January 1, 2045</a>
                    </li>
                    <li class="nav-item border-right border-secondary">
                        <a class="nav-link text-body small" href="advertise.jsp">Advertise</a>
                    </li>
                    <li class="nav-item border-right border-secondary">
                        <a class="nav-link text-body small" href="contact.jsp">Contact</a>
                    </li>
                    <c:if test="${empty userObj }">
                    <li class="nav-item">
                        <a class="nav-link text-body small" href="login.jsp">Login</a>
                    </li>
                    </c:if>
                    <c:if test="${!empty userObj }">
                        <div class="nav-item dropdown">
                            <a href="articles.jsp" class="nav-link text-body small dropdown-toggle" data-toggle="dropdown">Welcome, <c:out value="${userObj.fullName}"/></a>
                            <div class="dropdown-menu rounded-0 m-0">
                                <a href="myaccount.jsp" class="dropdown-item">My Account</a>
                                <a href="userLogout" class="dropdown-item">Logout</a>
                            </div>
                        </div>
                    </c:if>

                </ul>
            </nav>
        </div>
        <div class="col-lg-3 text-right d-none d-md-block">
            <nav class="navbar navbar-expand-sm bg-dark p-0">
                <ul class="navbar-nav ml-auto mr-n2">
                    <li class="nav-item">
                        <a class="nav-link text-body" href="#"><small class="fab fa-twitter"></small></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-body" href="#"><small class="fab fa-facebook-f"></small></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-body" href="#"><small class="fab fa-linkedin-in"></small></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-body" href="#"><small class="fab fa-instagram"></small></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-body" href="#"><small class="fab fa-google-plus-g"></small></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link text-body" href="#"><small class="fab fa-youtube"></small></a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <div class="row align-items-center bg-white py-3 px-lg-5">
        <div class="col-lg-4">
            <a href="index.jsp" class="navbar-brand p-0 d-none d-lg-block">
                <h1 class="m-0 display-4 text-uppercase text-primary">Biz<span class="text-secondary font-weight-normal">News</span></h1>
            </a>
        </div>
    </div>
</div>
<div class="container-fluid p-0">
    <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-2 py-lg-0 px-lg-5">
        <a href="index.jsp" class="navbar-brand d-block d-lg-none">
            <h1 class="m-0 display-4 text-uppercase text-primary">Biz<span class="text-white font-weight-normal">News</span></h1>
        </a>
        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-between px-0 px-lg-3" id="navbarCollapse">
            <div class="navbar-nav mr-auto py-0">
                <a href="index.jsp" class="nav-item nav-link active">Home</a>
                <a href="showtimes.jsp" class="nav-item nav-link">Showtimes</a>
                <a href="cinemas.jsp" class="nav-item nav-link">Cinemas</a>
                <div class="nav-item dropdown">
                    <a href="articles.jsp" class="nav-link dropdown-toggle" data-toggle="dropdown">Articles</a>
                    <div class="dropdown-menu rounded-0 m-0">
                        <a href="#" class="dropdown-item">News</a>
                        <a href="#" class="dropdown-item">Reviews</a>
                        <a href="#" class="dropdown-item">Videos</a>
                    </div>
                </div>
                <a href="community.jsp" class="nav-item nav-link">Community</a>
            </div>
            <div class="input-group ml-auto d-none d-lg-flex" style="width: 100%; max-width: 300px;">
                <input type="text" class="form-control border-0" placeholder="Keyword">
                <div class="input-group-append">
                    <button class="input-group-text bg-primary text-dark border-0 px-3"><i
                            class="fa fa-search"></i></button>
                </div>
            </div>
        </div>
    </nav>
</div>