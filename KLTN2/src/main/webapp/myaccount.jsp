<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>BizNews - Free News Website Template</title>
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta content="Free HTML Templates" name="keywords">
  <meta content="Free HTML Templates" name="description">

  <!-- Favicon -->
  <%@ page contentType="text/html; charset=UTF-8" %>
  <!-- Favicon -->
  <%@include file="../component/allcss.jsp" %>
</head>

<body>
<!-- Topbar Start -->
<div class="container-fluid d-none d-lg-block">
  <div class="row align-items-center bg-dark px-lg-5">
    <div class="col-lg-9">
      <nav class="navbar navbar-expand-sm bg-dark p-0">
        <ul class="navbar-nav ml-n2">
          <li class="nav-item border-right border-secondary">
            <a class="nav-link text-body small" href="#">Monday, January 1, 2045</a>
          </li>
          <li class="nav-item border-right border-secondary">
            <a class="nav-link text-body small" href="#">Advertise</a>
          </li>
          <li class="nav-item border-right border-secondary">
            <a class="nav-link text-body small" href="#">Contact</a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-body small" href="#">Login</a>
          </li>
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
      <a href="index.html" class="navbar-brand p-0 d-none d-lg-block">
        <h1 class="m-0 display-4 text-uppercase text-primary">Biz<span
                class="text-secondary font-weight-normal">News</span></h1>
      </a>
    </div>
  </div>
</div>
<!-- Topbar End -->


<!-- Navbar Start -->
<div class="container-fluid p-0">
  <nav class="navbar navbar-expand-lg bg-dark navbar-dark py-2 py-lg-0 px-lg-5">
    <a href="index.html" class="navbar-brand d-block d-lg-none">
      <h1 class="m-0 display-4 text-uppercase text-primary">Biz<span
              class="text-white font-weight-normal">News</span></h1>
    </a>
    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse justify-content-between px-0 px-lg-3" id="navbarCollapse">
      <div class="navbar-nav mr-auto py-0">
        <a href="index.html" class="nav-item nav-link active">Home</a>
        <a href="category.html" class="nav-item nav-link">Showtimes</a>
        <a href="single.html" class="nav-item nav-link">Cinemas</a>
        <div class="nav-item dropdown">
          <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Articles</a>
          <div class="dropdown-menu rounded-0 m-0">
            <a href="new.jsp" class="dropdown-item">News</a>
            <a href="reviews.jsp" class="dropdown-item">Reviews</a>
          </div>
        </div>
        <a href="contact.html" class="nav-item nav-link">Community</a>
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
<!-- Navbar End -->
<div class="container-fluid p-0" style="margin: 70px 0;">
  <div class="container">
    <div class="header-body mt-n5 mt-md-n6">
      <div class="row align-items-end">
        <div class="col-auto">
          <div class="avatar avatar-xxl header-avatar-top">
            <img src="https://moveek.com/bundles/ornweb/img/no-avatar.png" width="100px" alt="nganguyen1612"
                 class="avatar-img rounded-circle border border-4 border-body">
          </div>
        </div>
        <div class="col mb-4 ml-n3 ml-md-n2">
          <h1 class="header-title">
            nganguyen1612
          </h1>
        </div>
      </div>
      <div class="row align-items-center" style="margin-top: 20px;">
        <div class="col">

          <!-- Nav -->
          <ul class="nav nav-tabs nav-overflow header-tabs">
            <li class="nav-item">
              <a href="#" class="nav-link dropdown-toggle active" data-toggle="dropdown">
                Tài khoản
              </a>
              <div class="dropdown-menu">
                <a href="/user/profile" class="dropdown-item">Quản lý tài khoản</a>
                <a href="/profile/change-password" class="dropdown-item">Đổi mật khẩu</a>
              </div>
            </li>
            <li class="nav-item">
              <a href="/user/diary" class="nav-link">
                Tủ phim
              </a>
            </li>
            <li class="nav-item">
              <a href="/user/orders" class="nav-link">
                Vé
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">
                Nạp tiền
              </a>
              <div class="dropdown-menu">
                <a href="/nap-tien/" class="dropdown-item">Nạp tiền</a>
                <a href="/user/deposits" class="dropdown-item">Lịch sử nạp tiền</a>
                <a href="/user/credits" class="dropdown-item">Lịch sử giao dịch</a>
              </div>
            </li>
          </ul>

        </div>
      </div>
    </div>
  </div>
</div>
<div class="container">
  <div class="row">
    <div class="col-12 col-xl-8">
      <div class="card">
        <div class="card-body">
          <form name="user" method="post" enctype="multipart/form-data">
            <div class="row">
              <div class="col-sm-6">
                <div class="form-group"><label for="user_username" class="required">Tên tài
                  khoản</label><input type="text" id="user_username" name="user[username]"
                                      disabled="disabled" required="required" class="form-control"
                                      value="nganguyen1612"></div>
              </div>
              <div class="col-sm-6">
                <div class="form-group"><label for="user_email" class="required">Email</label><input
                        type="email" id="user_email" name="user[email]" disabled="disabled"
                        required="required" class="form-control" value="nganguyenitiuh@gmail.com">
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">
                <div class="form-group"><label for="user_fullname">Họ và tên</label><input
                        type="text" id="user_fullname" name="user[fullname]" class="form-control">
                </div>
              </div>
              <div class="col-sm-6">
                <div class="form-group"><label class="" for="user_region">Khu vực</label><select
                        id="user_region" name="user[region]" data-toggle="select"
                        class="form-control select2-hidden-accessible" tabindex="-1"
                        aria-hidden="true">
                  <option value=""></option>
                  <option value="1">Tp. Hồ Chí Minh</option>
                  <option value="2">Bắc Giang</option>
                  <option value="3">Đồng Nai</option>
                  <option value="4">Bình Dương</option>
                  <option value="5">Đắk Lắk</option>
                  <option value="6">Cần Thơ</option>
                  <option value="7">Đà Nẵng</option>
                  <option value="8">Quảng Ninh</option>
                  <option value="9">Hà Nội</option>
                  <option value="10">Hải Phòng</option>
                  <option value="11">Thừa Thiên - Huế</option>
                  <option value="12">Khánh Hòa</option>
                  <option value="13">Bình Thuận</option>
                  <option value="14">Bình Định</option>
                  <option value="15">Bà Rịa - Vũng Tàu</option>
                  <option value="16">Ninh Bình</option>
                  <option value="17">Phú Thọ</option>
                  <option value="18">An Giang</option>
                  <option value="19">Bến Tre</option>
                  <option value="20">Thái Bình</option>
                  <option value="21">Nghệ An</option>
                  <option value="22">Thái Nguyên</option>
                  <option value="23">Lâm Đồng</option>
                  <option value="24">Kiên Giang</option>
                  <option value="25">Thanh Hóa</option>
                  <option value="26">Yên Bái</option>
                  <option value="27">Trà Vinh</option>
                  <option value="28">Vĩnh Long</option>
                  <option value="29">Hải Dương</option>
                  <option value="30">Cà Mau</option>
                  <option value="31">Hà Tĩnh</option>
                  <option value="33">Bắc Ninh</option>
                  <option value="34">Tuyên Quang</option>
                  <option value="35">Hậu Giang</option>
                  <option value="36">Tây Ninh</option>
                  <option value="37">Phú Yên</option>
                  <option value="38">Nam Định</option>
                  <option value="39">Bạc Liêu</option>
                  <option value="40">Sóc Trăng</option>
                  <option value="41">Quảng Bình</option>
                  <option value="42">Quảng Nam</option>
                  <option value="43">Ninh Thuận</option>
                  <option value="44">Gia Lai</option>
                  <option value="45">Long An</option>
                  <option value="46">Sơn La</option>
                  <option value="47">Lạng Sơn</option>
                  <option value="48">Hà Nam</option>
                  <option value="49">Tiền Giang</option>
                  <option value="50">Quảng Trị</option>
                  <option value="51">Quảng Ngãi</option>
                  <option value="52">Kon Tum</option>
                  <option value="53">Bình Phước</option>
                  <option value="54">Vĩnh Phúc</option>
                  <option value="55">Đồng Tháp</option>
                  <option value="56">Hưng Yên</option>
                  <option value="57">Hòa Bình</option>
                </select><span class="select2 select2-container select2-container--default"
                               dir="ltr" style="width: 331.2px;"><span class="selection"><span
                        class="select2-selection select2-selection--single" role="combobox"
                        aria-haspopup="true" aria-expanded="false" tabindex="0"
                        aria-labelledby="select2-user_region-container"><span
                        class="select2-selection__rendered"
                        id="select2-user_region-container" title=""></span><span
                        class="select2-selection__arrow" role="presentation"><b
                        role="presentation"></b></span></span></span><span
                        class="dropdown-wrapper" aria-hidden="true"></span></span></div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">
                <div class="form-group"><label for="user_phone">Số điện thoại</label><input
                        type="tel" id="user_phone" name="user[phone]" placeholder="Số điện thoại"
                        class="form-control"></div>
              </div>
              <div class="col-sm-6">
                <div class="form-group">
                  <label class="text-white">.</label>
                  <a href="#" class="btn btn-outline-dark btn-block" data-toggle="modal"
                     data-target="#phoneVerifyModal">Xác thực số điện thoại</a>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-6">
                <div class="form-group"><label for="user_file">Ảnh đại diện</label>
                  <div class="custom-file"><input type="file" id="user_file" name="user[file]"
                                                  lang="vi" accept="image/gif, image/jpeg, image/png"
                                                  class="custom-file-input"><label for="user_file"
                                                                                   class="custom-file-label"></label>
                  </div>
                </div>
              </div>
              <div class="col-sm-6">
              </div>
            </div>
            <div class="form-group mb-0">
              <button type="submit" id="user_save" class="btn btn-dark">Cập nhật</button>
            </div>
            <input type="hidden" id="user__token" name="user[_token]"
                   value="b036e4153b457d1dab20a76ab9106fc.3iIVgepBG8NJFzskW6jRe-BttV5HYdff9zzzhhrSHpQ.mHNw0dgSKoICeHx9Cdi7C5EUhC4DWISVknWS0VyARu6XFnnU2QJLi3BSTA">
          </form>
        </div>
      </div>

    </div>

  </div>
</div>
<!-- Footer Start -->
<%@include file="../component/footer.jsp" %>