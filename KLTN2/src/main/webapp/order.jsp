<%@ page import="com.kltn1612.kltn.daos.PremiereDao" %>
<%@ page import="com.kltn1612.kltn.db.DBConnect" %>
<%@ page import="com.kltn1612.kltn.entity.Premiere" %>
<%@ page import="com.kltn1612.kltn.daos.WaterCornDetailDao" %>
<%@ page import="com.kltn1612.kltn.entity.WaterCornDetail" %>
<%@ page import="java.util.List" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>BizNews - Free News Website Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">
    <!-- Favicon -->
    <%@include file="../component/allcss.jsp" %>
</head>

<body>
<%@include file="../component/navbar.jsp" %>
<div class="main-content">
    <div class="ticketing-steps bg-white border-bottom">
        <div class="container">
            <div class="row">
                <div class="col ticketing-step">
                    <div class="">
                        <i style="margin-left: 25px" class="fa fa-sliders" aria-hidden="true"></i>
                        <br>
                        <span>Chọn ghế</span>
                    </div>
                </div>
                <div class="col ticketing-step">
                    <div>
                        <i style="margin-left: 25px" class="fa fa-tasks" aria-hidden="true"></i>
                        <br>
                        <span>Bắp nước</span>
                    </div>
                </div>
                <div class="col ticketing-step">
                    <div>
                        <i style="margin-left: 25px" class="fa fa-credit-card" aria-hidden="true"></i>
                        <br>
                        <span>Thanh toán</span>
                    </div>
                </div>
                <div class="col ticketing-step">
                    <div class="text-danger">
                        <i style="margin-left: 25px" class="fa fa-ticket" aria-hidden="true"></i>
                        <br>
                        <span>Thông tin vé</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="app">
        <!-- MAIN CONTENT
        ================================================== -->
        <div class="main-content">
            <div class="container">
                <div class="header mb-3"></div>
                <div class="row">
                    <div class="col-lg-8 col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-sm-4 d-sm-block">
                                        <div class="text-center">
                                            <img src="https://thuenhadulich.vn/wp-content/themes/thuenhanghiduong/images/done_icon.png"
                                                 class="img-fluid mb-3">
                                        </div>
                                    </div>
                                    <div class="col-12 col-sm-8 ticketing-order-notes">
                                        <div>
                                            <%
                                                Integer idPremier = (Integer) request.getSession().getAttribute("id_premier");
                                                PremiereDao premiereDao = new PremiereDao(DBConnect.getConn());
                                                Premiere premiere = premiereDao.getPremieres(idPremier);
                                                String array[] = premiere.getSeats().split(",");
                                                Integer length = array.length;
                                            %>
                                            <div class="text-center alert alert-success">
                                                Thanh toán thành công
                                            </div>
                                            <p class="mb-0">
                                                Mã đơn hàng: <strong>DZG1VBE</strong><br>
                                                Email: <strong>hfshf@gmail.com</strong><br>
                                                Phone Number: <strong>097 278 55 14</strong>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-12">

                        <div class="card card-sm">
                            <div class="card-body">
                                <div class="row">
                                    <div class="col">
                                        <p class="text-truncate mb-0">

                                        </p>
                                        <p class="text-truncate mb-0">
                                            <strong><%=premiere.getNameTheater()%>
                                            </strong>
                                        </p>
                                        <p class="text-truncate mb-0">
                                            Suất
                                            <strong><%=premiere.getTimeTicket()%>
                                            </strong> -
                                            Ngày,
                                            <strong>
                                                <%=premiere.getDateTicket()%>
                                            </strong>
                                        </p>
                                        <p class="text-truncate mb-0">
                                            Screen <strong>3</strong>
                                            - Seat(s)
                                            <span class="font-weight-bold ticketing-seats">H5, H6, J6</span>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-header">
                                <h4 class="card-header-title">
                                    Order Summary
                                </h4>
                            </div>
                            <div class="card-body">
                                <div class="row align-items-center mb-2">
                                    <div class="col">
                                        <h6 class="card-title text-uppercase text-muted">
                                            GHẾ
                                        </h6>
                                    </div>
                                    <div class="col-auto">
                                        <span class="h2"><%=premiere.getPriceTicket() * length%> đ</span>
                                    </div>
                                </div>
                                <%
                                    WaterCornDetailDao waterCornDetailDao = new WaterCornDetailDao(DBConnect.getConn());
                                    List<WaterCornDetail> list = waterCornDetailDao.getWaterCornDetailById(idPremier);
                                    for (WaterCornDetail waterCornDetail : list) {
                                %>
                                <div class="row align-items-center mb-2">
                                    <div class="col">
                                        <h6 class="card-title text-uppercase text-muted">
                                            <%=waterCornDetail.getName()%>
                                        </h6>
                                    </div>
                                    <div class="col-auto">
                                        <span class="F"><%=Integer.parseInt(waterCornDetail.getCountCombo()) * Integer.parseInt(waterCornDetail.getPrice())%> đ</span>
                                    </div>
                                </div>
                                <%
                                    }
                                %>
                                <hr class="dropdown-divider">
                                <div class="row align-items-center">
                                    <div class="col">
                                        <h6 class="card-title text-uppercase text-muted">
                                            Tổng
                                        </h6>
                                    </div>
                                    <div class="col-auto">
                                        <span class="h2"><%=premiere.getTotal()%> đ</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="countdown-placeholder"></div>
            <div class="modal fade" id="ticketPreviewModal" tabindex="-1" role="dialog" style="z-index: 9999;">
                <div class="modal-dialog modal-md" role="document">
                    <div class="modal-content">
                        <div class="card mb-0">
                            <div class="card-header">
                                <div class="row align-items-center">
                                    <div class="col">
                                        <!-- Title -->
                                        <h4 class="card-header-title">
                                            Xác nhận đơn hàng
                                        </h4>
                                    </div>
                                    <div class="col-auto">
                                        <!-- Close -->
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">×</span>
                                        </button>
                                    </div>
                                </div> <!-- / .row -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- / .main-content -->
    </div>
</div>

<%@include file="../component/footer.jsp" %>