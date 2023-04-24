<%@ page import="com.kltn1612.kltn.entity.WaterCorn" %>
<%@ page import="com.kltn1612.kltn.daos.WaterConrnDao" %>
<%@ page import="com.kltn1612.kltn.db.DBConnect" %>
<%@ page import="java.util.List" %>
<%@ page import="com.kltn1612.kltn.daos.WaterCornDetailDao" %>
<%@ page import="com.kltn1612.kltn.entity.WaterCornDetail" %>
<%@ page import="com.kltn1612.kltn.daos.TicketDao" %>
<%@ page import="com.kltn1612.kltn.entity.TicketDetail" %>
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
    <%@ page contentType="text/html; charset=UTF-8" %>
    <!-- Favicon -->
    <%@include file="../component/allcss.jsp" %>
    <style>
        .btn-rounded-circle {
            padding-left: 0;
            padding-right: 0;
            border-radius: 70%;
            background-color: #f9fbfd;
            border-color: #d2ddec;
            width: 25px;
        }

        .form-control-flush {
            padding: 0;
            border-width: 0;
        }

        .form-control:disabled, .form-control[readonly] {
            background: white !important;
            opacity: 1;
        }

    </style>
</head>

<body>
<%@include file="../component/navbar.jsp" %>
<!-- Navbar Start -->
<!-- Navbar End -->
<div class="main-content">
    <div class="ticketing-steps bg-white border-bottom">
        <div class="container">
            <div class="row">
                <div class="col ticketing-step">
                    <div>
                        <i style="margin-left: 25px" class="fa fa-sliders" aria-hidden="true"></i>
                        <br>
                        <span>Chọn ghế</span>
                    </div>
                </div>
                <div class="col ticketing-step">
                    <div class="text-danger">
                        <i style="margin-left: 25px" class="fa fa-tasks" aria-hidden="true"></i>
                        <br>
                        <span>Bắp nước</span>
                    </div>
                </div>
                <div class="col ticketing-step">
                    <div class="">
                        <i style="margin-left: 25px" class="fa fa-credit-card" aria-hidden="true"></i>
                        <br>
                        <span>Thanh toán</span>
                    </div>
                </div>
                <div class="col ticketing-step">
                    <div class="">
                        <i style="margin-left: 25px" class="fa fa-ticket" aria-hidden="true"></i>
                        <br>
                        <span>Thông tin vé</span>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="header mb-3"></div>
        <form method="post" id="seatPickerForm" action="choose_combo">
            <div class="row">
                <div class="col-lg-4 col-12 order-sm-last">
                    <%
                          String ticket_id = (String) request.getSession().getAttribute("ticket_id");
                          TicketDao ticketDao = new TicketDao(DBConnect.getConn());
                          TicketDetail ticket = ticketDao.getTicketById(Integer.parseInt(ticket_id));
                    %>
                    <div class="card card-sm">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <p class="text-truncate mb-0">
                                        <%=ticket.getMovieName()%>
                                    </p>
                                    <p class="text-truncate mb-0">
                                        <strong><%=ticket.getThearerName()%></strong>
                                    </p>
                                    <p class="text-truncate mb-0">
                                        Suất
                                        <strong><%=ticket.getTicketTime()%></strong> -
                                        Ngày,
                                        <strong>
                                            <%=ticket.getTicketDate()%>
                                        </strong>
                                    </p>
                                    <p class="text-truncate mb-0">
                                        Phòng chiếu <strong>01</strong>
                                        -
                                        Ghế  <%
                                        String seats = (String) request.getSession().getAttribute("seats");
                                    %>
                                        <input type="hidden" value="<%=seats%>" name="seats" id="seats">
                                        <%= seats %>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card sticky-header-bars">
                        <div class="card-body">
                            <div class="row align-items-center">
                                <div class="col">
                                    <!-- Title -->
                                    <h6 class="card-title text-uppercase text-muted mb-2">
                                        Tổng đơn hàng
                                    </h6>
                                    <!-- Heading -->
                                    <% request.getSession(true);
                                        String total = (String) request.getSession().getAttribute("total");
                                        String ticketId = (String) request.getSession().getAttribute("ticket_id");
                                    %>
                                    <span class="h2 mb-0 ticketing-total-amount-span"><%= total %> </span><span
                                        class="h2 mb-0 ticketing-total-amount">đ</span>
                                    <input type="hidden" id="total" name="total" value="<%= total %>">
                                    <input type="hidden" id="ticket_id" name="ticket_id" value="<%= ticketId %>">
                                    <input type="hidden" id="array_count" name="array_count" value="">
                                </div>
                            </div> <!-- / .row -->

                        </div>
                    </div>
                    <div class="flow-actions sticky-button-bars">
                        <button style="border-radius: 10px;" type="submit"
                                class="btn btn-lg btn-dark btn-ticketing-do-submit btn-block btn-ticketing-flow">Tiếp
                            tục
                        </button>
                    </div>
                </div>
                <div class="col-lg-8 col-12">
                    <input type="hidden" name="_token"
                           value="9a24b7b35e.CVTQs6u-nQPINRA91Dg7jfF2EV5xFaUyzb5TAwmeVHY.bh6WwtqO122xbEVMp15z4L4ZRQ4UWsZ1m44KVmT4NRh9JLaK4vzxQvp2Yw">
                    <div class="ticketing-content">
                        <div class="card">
                            <div class="table-responsive">
                                <table class="table table-nowrap card-table">
                                    <thead>
                                    <tr>
                                        <th>Combo</th>
                                        <th class="text-right d-none d-sm-block">Giá tiền</th>
                                        <th class="text-right">Số lượng</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <%
                                        WaterConrnDao waterConrnDao = new WaterConrnDao(DBConnect.getConn());
                                        List<WaterCorn> list = waterConrnDao.getAllWaterCorn();
                                        for (WaterCorn waterCorn : list) {
                                    %>
                                    <tr>
                                        <td class="bg-light text-muted" colspan="3"><%= waterCorn.getName() %>
                                        </td>
                                    </tr>
                                    <%
                                        WaterCornDetailDao waterCornDetailDao = new WaterCornDetailDao(DBConnect.getConn());
                                        List<WaterCornDetail> listDetatil = waterCornDetailDao.getAllWaterDetailCorn();
                                        for (WaterCornDetail waterCornDetail : listDetatil) {
                                            if (waterCornDetail.getWaterCornId() == waterCorn.getId()) {
                                    %>
                                    <tr class="ticketing-concession-type">
                                        <td class="concession-name">
                                            <%= waterCornDetail.getName() %>
                                            <span class="d-block d-sm-none text-muted">
                                                        <%= waterCornDetail.getPrice() %> đ
                                                    </span>
                                        </td>
                                        <td class="concession-price text-right">
                                            <%= waterCornDetail.getPrice() %> đ
                                        </td>
                                        <td class="ticketing-select text-right">
                                            <a
                                                    class="btn btn-sm btn-rounded-circle btn-white btn-concession-quantity-minus"
                                                    id="<%= waterCornDetail.getId()%>"
                                                    price="<%= waterCornDetail.getPrice() %>"
                                                    data-type="minus">
                                                -
                                            </a>
                                            <input name="count" type="text" min="0" max="10"
                                                   class="form-control form-control-flush text-center d-inline count"
                                                   value="0" style="width: 30px;" readonly="">
                                            <a
                                                    class="btn btn-sm btn-rounded-circle btn-white btn-concession-quantity-plus"
                                                    price="<%= waterCornDetail.getPrice() %>"
                                                    data-type="plus">
                                                +
                                            </a>
                                        </td>
                                    </tr>
                                    <%
                                                }
                                            }
                                        }
                                    %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <div class="test">

    </div>

    <%@include file="../component/footer.jsp" %>
    <script>
        $(document).ready(function () {
            var ticket = Number($("#total").val());
            var total_price = 0;
            $(".btn-concession-quantity-plus").click(function () {
                var i = Number($(this).parent().find('.count').val()) + 1;
                $(this).parent().find('.count').val(i);
                var inputs = $(".btn-concession-quantity-plus");
                var counts = $(".count");
                var totals = 0;
                for (var i = 0; i < inputs.length; i++) {
                    totals += Number($(inputs[i]).attr('price')) * Number($(counts[i]).val());
                }
                var total_click = ticket + Number(totals);
                total_price = total_click;
                $(".ticketing-total-amount-span").html(total_click + " ");
            })
            $(".btn-concession-quantity-minus").click(function () {
                var i = Number($(this).parent().find('.count').val()) - 1;
                $(this).parent().find('.count').val(i);
                var inputs = $(".btn-concession-quantity-minus");
                var counts = $(".count");
                var totals = 0;
                for (var i = 0; i < inputs.length; i++) {
                    totals += Number($(inputs[i]).attr('price')) * Number($(counts[i]).val());
                }
                var total_click = ticket + Number(totals);
                total_price = total_click;
                $(".ticketing-total-amount-span").html(total_click + " ");
            })
            $("#seatPickerForm").on('submit', function (event) {
                var ticket_id = $("#ticket_id").val();
                var seats = $("#seats").val();
                var counts = $(".count");

                var array_count = [];
                for (var i = 0; i < counts.length; i++) {
                    array_count.push($(counts[i]).val());
                }
                $.ajax({
                    url: 'choose_combo',
                    type: "POST",
                    data: {
                        total_price: total_price,
                        ticket_id: ticket_id,
                        count: JSON.stringify(array_count),
                        seats: seats
                    },
                    success: function (responseText) {
                        window.location.href = "http://localhost:8080/KLTN_war_exploded/payment.jsp";
                    }
                });
            });
        });
    </script>