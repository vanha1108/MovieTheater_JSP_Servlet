<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>BizNews - Free News Website Template</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="Free HTML Templates" name="keywords">
  <meta content="Free HTML Templates" name="description">
  <%@include file="../component/allcss.jsp"%>
</head>

<body>
<!-- Navbar Start -->
<%@include file="../component/navbar.jsp"%>
<!-- Navbar End -->
<div class="container-fluid p-0">
  <div class="wrapper">
    <div class="logo">
      <img src="https://www.freepnglogos.com/uploads/twitter-logo-png/twitter-bird-symbols-png-logo-0.png"
           alt="">
    </div>
    <form method="post" action="user_register" class="p-3 mt-3">
      <c:if test="${not empty sucMsg }">
        <p class="text-center text-success fs-3">${sucMsg}</p>
        <c:remove var="sucMsg" scope="session" />
      </c:if>
      <c:if test="${not empty errorMsg }">
        <p class="text-center text-danger fs-3">${errorMsg}</p>
        <c:remove var="errorMsg" scope="session" />
      </c:if>
      <div class="form-field d-flex align-items-center">
        <span class="far fa-user"></span>
        <input type="text" name="fullname" id="fullname" placeholder="Full Name">
      </div>
      <div class="form-field d-flex align-items-center">
        <span class="far fa-envelope"></span>
        <input type="email" name="email" id="email" placeholder="Email">
      </div>
      <div class="form-field d-flex align-items-center">
        <span class="fas fa-key"></span>
        <input type="password" name="password" id="password" placeholder="Password">
      </div>
      <button type="submit" class="btn mt-3">SignUp</button>
    </form>
  </div>
</div>
<!-- News With Sidebar End -->
<%@include file="../component/footer.jsp"%>