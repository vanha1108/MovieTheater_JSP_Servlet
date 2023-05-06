<%@ page import="com.kltn1612.kltn.daos.WaterCornDetailDao" %>
<%@ page import="com.kltn1612.kltn.db.DBConnect" %>
<%@ page import="com.kltn1612.kltn.entity.WaterCornDetail" %>
<%@ page import="java.util.List" %>
<%@ page import="com.kltn1612.kltn.daos.PremiereDao" %>
<%@ page import="com.kltn1612.kltn.entity.Premiere" %>
<%@ page import="com.kltn1612.kltn.entity.User" %>
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
    <script src="https://www.paypal.com/sdk/js?client-id=AbWFksrBPgGuJgFmPJQgmx8jvx7ueKTWPBEhuVfHU3T3FOKlqoF-ihIMQ_rpEWd2rBfkychIinaiUNMl"></script>
    <style>
        .switch {
            position: relative;
            display: inline-block;
            width: 40px;
            height: 24px;
        }

        .switch input {
            opacity: 0;
            width: 0;
            height: 0;
        }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            -webkit-transition: .4s;
            transition: .4s;
        }

        .slider:before {
            position: absolute;
            content: "";
            height: 18px;
            width: 18px;
            left: 4px;
            bottom: 4px;
            background-color: white;
            -webkit-transition: .4s;
            transition: .4s;
        }

        input:checked + .slider {
            background-color: #2196F3;
        }

        input:focus + .slider {
            box-shadow: 0 0 1px #2196F3;
        }

        input:checked + .slider:before {
            -webkit-transform: translateX(16px);
            -ms-transform: translateX(16px);
            transform: translateX(16px);
        }

        /* Rounded sliders */
        .slider.round {
            border-radius: 34px;
        }

        .slider.round:before {
            border-radius: 50%;
        }
    </style>
    <!-- Favicon -->
    <%@include file="../component/allcss.jsp" %>
</head>

<body>
<%@include file="../component/navbar.jsp" %>
<c:if test="${ empty userObj }">
    <c:redirect url="login.jsp"></c:redirect>
</c:if>
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
                    <div class="text-danger">
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

    <div id="app">
        <!-- MAIN CONTENT
        ================================================== -->
        <div class="main-content">
            <div class="container">
                <div class="header mb-3"></div>
                <form name="orn_ticketing_order_customer" action="payment" method="post" id="orderCheckoutForm">
                    <div class="row">
                        <div class="col-lg-4 col-12 order-sm-last">
                            <div class="card card-sm">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col">
                                            <p class="text-truncate mb-0">
                                                <%
                                                    Integer idPremier = (Integer) request.getSession().getAttribute("id_premier");
                                                    PremiereDao premiereDao = new PremiereDao(DBConnect.getConn());
                                                    Object customerId = request.getSession().getAttribute("userObj");
                                                    int getCustomerId = ((User) customerId).getId();
                                                    premiereDao.updateCustomerId(getCustomerId, idPremier);
                                                    Premiere premiere = premiereDao.getPremieres(idPremier);
                                                    String array[] = premiere.getSeats().split(",");
                                                    Integer length = array.length;
                                                %>
                                                <%=premiere.getNameMovie()%>
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
                                                Phòng chiếu <strong><%=premiere.getRoom()%>
                                            </strong>
                                                - Ghế
                                                <span class="font-weight-bold ticketing-seats"><%=premiere.getSeats()%></span>
                                            </p>
                                            <p class="text-truncate mb-0">
                                                Điểm của bạn: <strong class="premiere_point"><%=premiere.getRoom()%></strong>. Bạn có muốn sử dụng
                                                <label class="switch">
                                                    <input type="checkbox" name="point" id="point">
                                                    <span class="slider round"></span>
                                                </label>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" value="<%=premiere.getTotal()%>" name="total" id="total">
                            <input type="hidden" value="<%=premiere.getPoint()%>" name="point" id="point">
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
                                                    <%=premiere.getTotal()%> đ
                                                </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card d-none d-lg-block">
                                <div class="card-body">
                                    Vé đã mua không thể đổi hoặc hoàn tiền. Vui lòng kiểm tra lại thông tin trước
                                    khi tiếp tục.
                                </div>
                            </div>
                            <p class="clearfix flow-actions sticky-button-bars">
                                <button type="submit"
                                   class="btn btn-lg btn-dark btn-block btn-ticketing-flow btn-do-form-submit"
                                   id="ticketing-order-customer-form-submit">Thanh toán</button>
                            </p>
                        </div>
                        <div class="col-lg-8 col-12">
                            <div class="ticketing-content ticketing-checkout-page">

                                <div class="card">
                                    <div class="card-header bg-light">
                                        <div class="card-header-title text-muted">
                                            Tóm tắt đơn hàng
                                        </div>
                                    </div>
                                    <div class="table-responsive">
                                        <table class="table card-table">
                                            <thead>
                                            <tr>
                                                <th>Mô tả</th>
                                                <th class="text-center">Số lượng</th>
                                                <th class="text-right">Thành tiền</th>
                                            </tr>
                                            </thead>
                                            <tbody>
                                            <tr>
                                                <td>Số vé</td>
                                                <td class="text-center"><%=length%>
                                                </td>
                                                <td class="text-right"><%=premiere.getPriceTicket() * length%> đ</td>
                                            </tr>
                                            <%
                                                WaterCornDetailDao waterCornDetailDao = new WaterCornDetailDao(DBConnect.getConn());
                                                List<WaterCornDetail> list = waterCornDetailDao.getWaterCornDetailById(idPremier);
                                                for (WaterCornDetail waterCornDetail : list) {
                                            %>
                                            <tr>
                                                <td><%=waterCornDetail.getName()%>
                                                </td>
                                                <td class="text-center"><%=waterCornDetail.getCountCombo()%>
                                                </td>
                                                <td class="text-right"><%=Integer.parseInt(waterCornDetail.getCountCombo()) * Integer.parseInt(waterCornDetail.getPrice())%>
                                                    đ
                                                </td>
                                            </tr>
                                            <%
                                                }
                                            %>
                                            <tr>
                                                <td colspan="2">Tổng</td>
                                                <td class="text-right"><%=premiere.getTotal()%> đ</td>

                                            </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                <div class="card">
                                    <div class="card-header bg-light">
                                        <div class="card-header-title text-muted">
                                            Hình thức thanh toán
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <input type="hidden" name="payment_gateway" value="payoo">
                                        <input type="hidden" name="payment_method" value="cc-payment">

                                        <div class="payment-gateway pg-payoo pm-international-card clearfix active"
                                             data-pg="payoo" data-pm="cc-payment">
                                            <i class="fe fe-check-circle pg-checked"></i>
                                            <div class="pg-info">
                                                <img src="https://moveek.com/bundles/ornweb/img/payoo-icon.png">
                                                Thẻ Visa, Master, JCB
                                            </div>
                                        </div>
                                        <div class="payment-gateway pg-momo clearfix" data-pg="momo" data-pm="">
                                            <i class="fe fe-check-circle pg-checked"></i>
                                            <div class="pg-info">
                                                <img src="https://moveek.com/bundles/ornweb/img/momo-icon.png">
                                                Ví MoMo
                                            </div>
                                        </div>
                                        <div class="payment-gateway pg-shopeepay clearfix" data-pg="shopeepay"
                                             data-pm="">
                                            <i class="fe fe-check-circle pg-checked"></i>
                                            <div class="pg-info">
                                                <img src="https://moveek.com/bundles/ornweb/img/shopeepay-icon.png">
                                                Ví ShopeePay
                                            </div>
                                        </div>
                                        <div class="payment-gateway clearfix"
                                             data-pm="">
                                            <i class="fe fe-check-circle pg-checked"></i>
                                            <div class="pg-info">
                                                <div id="paypal-button-container"></div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="card d-lg-none">
                                    <div class="card-body">
                                        Vé đã mua không thể đổi hoặc hoàn tiền. Vui lòng kiểm
                                        tra lại thông tin trước khi tiếp tục.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
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

<script>
    $(document).ready(function () {
        $('#point').change(function () {
            var point = $(".premiere_point").text();
        });
        paypal.Buttons({
            // Order is created on the server and the order id is returned
            createOrder: function (data, actions) {
                return actions.order.create({
                    purchase_units: [{
                        amount:{
                            value: '20'
                        }

                    }]
                })
            },
            onApprove: function (data, actions) {
                return actions.order.capture().then( function (details){
                    console.log(details);
                    window.location.href = 'http://localhost:8080/KLTN_war_exploded/update_payment';
                })
            },
            // Finalize the transaction on the server after payer approval

        }).render('#paypal-button-container');
    });
</script>