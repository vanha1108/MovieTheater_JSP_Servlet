<%@ page import="com.kltn1612.kltn.daos.ProvinceDao" %>
<%@ page import="com.kltn1612.kltn.db.DBConnect" %>
<%@ page import="java.util.List" %>
<%@ page import="com.kltn1612.kltn.entity.Province" %>
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
                                    <form class="form form-horizontal" method="post" action="add_theater" enctype="multipart/form-data">
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
                                                    <label>Provice</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <select class="form-select" id="province" name="province">
                                                        <option>Provice</option>
                                                        <%
                                                            ProvinceDao provinceDao = new ProvinceDao(DBConnect.getConn());
                                                            List<Province> list = provinceDao.getAllProvinceList();
                                                            for (Province province : list) {
                                                        %>
                                                        <option value="<%= province.getId() %>"><%= province.getName() %>
                                                        </option>
                                                        <%
                                                            }
                                                        %>
                                                    </select>
                                                </div>
                                                <div class="col-md-4">
                                                    <label>District</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <select class="form-select" id="district" name="district">
                                                        <option>District</option>
                                                    </select>
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Address</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="text" id="address" class="form-control"
                                                           name="address" placeholder="Please specify village and ward">
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Row</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="number" id="row" class="form-control"
                                                           name="row" placeholder="0">
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Column</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="number" id="column" class="form-control"
                                                           name="column" placeholder="0">
                                                </div>
                                                <div class="col-md-4">
                                                    <label>Imgae</label>
                                                </div>
                                                <div class="col-md-8 form-group">
                                                    <input type="file" id="file" class="form-control"
                                                           name="file">
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
        <div id="ngaanc" ></div>
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
<script>
    $(document).ready(function () {
        $("#province").on('change', function() {
            $.ajax({
                url: 'DistrictServlet',
                data: {
                    province: $('#province').val()
                },
                success: function (responseText) {
                    $("#district").html(responseText);
                }
            });
        });
    });
</script>
</body>
</html>