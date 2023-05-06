<%@ page import="com.kltn1612.kltn.daos.TicketDao" %>
<%@ page import="com.kltn1612.kltn.db.DBConnect" %>
<%@ page import="com.kltn1612.kltn.entity.TicketDetail" %>
<%@ page import="com.kltn1612.kltn.daos.PremiereDao" %>
<%@ page import="com.kltn1612.kltn.entity.Premiere" %>
<%@ page import="java.util.List" %>
<%@ page import="com.kltn1612.kltn.daos.TheaterDao" %>
<%@ page import="com.kltn1612.kltn.entity.Theater" %>
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
    <%@include file="../component/allcss.jsp"%>

    <!-- Google Web Fonts -->

    <style>
        ul.seat-row li.spacer {
            cursor: default!important;
            background: transparent!important;
        }
        li.spacer {
            cursor: default!important;
            background: transparent!important;
        }
        .seat-selection .seats .row-wrapper {
            text-align: left;
            display: inline-block;
        }

        .seat-selection .seats {
            text-align: center;
            position: relative;
            display: table-cell;
            vertical-align: top;
        }

        .seat-selection .front {
            display: block;
            background: #dfdfdf;
            padding: 5px;
            text-align: center;
            text-transform: uppercase;
            font-weight: 700;
            color: #000;
            margin-bottom: 10px;
            margin-left: 38px;
        }

        .seat-selection .legend {
            text-align: center;
        }

        .btn-ticketing-flow {
            color: #fff;
            background-color: #12263f;
            border-color: #12263f;
            border-radius: 5px;
        }
        .main {
            color: #fff;
            background-color: #00b300!important;
            box-shadow: 0 0 11px #00b300;
        }
        .taken {
            cursor: not-allowed !important;
            color: #999 !important;
            background: repeating-linear-gradient(45deg,hsla(0,0%,60%,.4),hsla(0,0%,60%,.4) 10px,hsla(0,0%,60%,.6) 0,hsla(0,0%,60%,.6) 20px) !important;
        }
        .seat-selection .legend span {
            display: inline-block;
            width: 25px;
            height: 25px;
            background: #dfdfdf;
            margin: 3px;
            cursor: pointer;
            position: relative;
            box-sizing: border-box;
            text-align: center;
            padding: 7px 0;
            vertical-align: middle;
            font-size: 11px;
            font-weight: 700;
            border-radius: 2px;
        }
    </style>
    <!-- Font Awesome -->
</head>

<body>
<!-- Topbar Start -->
<%@include file="../component/navbar.jsp"%>
<c:if test="${not empty total }">
    <c:remove var="total" scope="session" />
</c:if>
<c:if test="${not empty seats }">
    <c:remove var="seats" scope="session" />
</c:if>
<!-- Navbar End -->
<div class="main-content">
    <div class="ticketing-steps bg-white border-bottom">
        <div class="container">
            <div class="row">
                <div class="col ticketing-step">
                    <div class="text-danger" >
                        <i style="margin-left: 25px" class="fa fa-sliders" aria-hidden="true"></i>
                        <br>
                        <span>Chọn ghế</span>
                    </div>
                </div>
                <div class="col ticketing-step">
                    <div>
                        <i  style="margin-left: 25px" class="fa fa-tasks" aria-hidden="true"></i>
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
        <form method="post" id="seatPickerForm" action="choose_chair">
            <div class="row">
                <div class="col-lg-4 col-12 order-sm-last">
                    <%
                        int id = Integer.parseInt(request.getParameter("id"));
                        TicketDao ticketDao = new TicketDao(DBConnect.getConn());
                        TicketDetail ticket = ticketDao.getTicketById(id);
                    %>
                    <input type="hidden" id="ticket_id" name="ticket_id" value="<%= id %>" >
                    <div class="card card-sm">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <p class="text-truncate mb-0">
                                        <%=ticket.getMovieName()%>
                                    </p>
                                    <p class="text-truncate mb-0">
                                        <strong><%=ticket.getThearerName()%>
                                        </strong>
                                    </p>
                                    <p class="text-truncate mb-0">
                                        Suất
                                        <strong><%=ticket.getTicketTime()%>
                                        </strong> -
                                        Ngày,
                                        <strong>
                                            <%=ticket.getTicketDate()%>
                                        </strong>
                                    </p>
                                    <p class="text-truncate mb-0 ticketing-seats">
                                        Phòng chiếu <strong><%=ticket.getRoom()%></strong>
                                        - Ghế
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
                                    <span class="h2 mb-0 ticketing-total-amount">
                                            <%=ticket.getPrice()%> đ
                                        </span>
                                    <input type="hidden" value="<%=ticket.getPrice()%>" id="price_ticket" name="price_ticket" />

                                </div>
                            </div> <!-- / .row -->

                        </div>
                    </div>
                    <div class="flow-actions sticky-button-bars">
                        <button style="border-radius: 10px;" type="submit"
                                class="btn btn-lg btn-dark btn-ticketing-do-submit btn-block btn-ticketing-flow">Tiếp tục
                        </button>

                    </div>
                </div>
                <div class="col-lg-8 col-12">
                    <div class="ticketing-content">
                        <div class="seat-selection seat-map-beta">
                            <div class="legend">
                                <div>
                                    <p>Ghế bạn chọn  <span class="available seat-area main">
                                </span></p>
                                </div>
                                <div>
                                    <p>Đã bán  <span class="seat-area-1 taken"></span></p>
                                </div>
                            </div>
                            <span class="front">Màn hình</span>
                            <%
                                PremiereDao premiereDao = new PremiereDao(DBConnect.getConn());
                                List<Premiere> list = premiereDao.getSeats(id);
                                StringBuffer output = new StringBuffer(110);
                                for (Premiere element : list) {
                                    output.append(", " + element.getSeats());
                                }
                                String b;
                                Integer idTheater = (Integer) request.getSession().getAttribute("id_theater");
                                TheaterDao theaterDao = new TheaterDao(DBConnect.getConn());
                                Theater theater = theaterDao.getTheaterById(idTheater);
                            %>
                            <input type="hidden" name="seats" id="seats" value="<%=output%>">
                            <%=theater.getLayout()%>
                        </div>
                    </div>
                </div>
            </div>
    </form>
</div>

<%@include file="../component/footer.jsp" %>
    <script !src="">
        $(document).ready(function(){
            var total = 0;
            var array = [];
            $(".seat-area").click(function(e){
                var array2 = [];
                $(e.target).toggleClass("main");
                if($(this).hasClass("main")) {
                    $(".ticketing-seats").append("<span class=" + e.target.id + ">"+ e.target.id + " <span>");
                }
                else
                {
                    $(".ticketing-seats" + " ." + e.target.id).remove();
                }
                $('.ticketing-seats span').each(function() {
                    if($(this).text() != '')
                    {
                        array2.push($(this).text().trim());
                    }
                });
                var price_ticket = $('#price_ticket').val();
                var count_ticket = $('.ticketing-seats span').length/2;
                array = array2;
                total = price_ticket * count_ticket;
                $(".ticketing-total-amount").html(total + " đ");
            });
            var id = $("#ticket_id").val();
            $("#seatPickerForm").on('submit', function() {
                console.log(id);
                $.ajax({
                    url: 'choose_chair',
                    type: "POST",
                    data: {
                        total: total,
                        seats: array.join(", "),
                        ticket_id: id
                    },
                    success: function (responseText) {
                        window.location.href = "http://localhost:8080/KLTN_war_exploded/choose_combo.jsp";
                    }
                });
            });
            var seats = $("#seats").val();
            var array = seats.split(",");
            var IDs = [];
            $("#seats_order").find("li").each(function(){ IDs.push(this.id); });
            for(var a = 0;  a < array.length; a++)
            {
                console.log(array[a].trim());
                if(array[a].trim() != "")
                {
                    $("#"+array[a].trim()).addClass('taken');
                }
            }

        });
    </script>