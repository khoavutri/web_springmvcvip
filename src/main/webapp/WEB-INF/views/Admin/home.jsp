<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.trungtamjava.model.khachhang" %>
<%@page import="com.trungtamjava.service.UserService" %>
<%@page import="com.trungtamjava.service.impl.ServiceIO" %>
<%@page import="com.trungtamjava.dao.userdao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://www.springframework.org/tags/form"  prefix="fom"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>sách khoa vip</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
	integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
	crossorigin="anonymous"></script>
</head>
<body>

	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="#"> <img
				src="https://wikici.com/Upload/chu-ky/chu-ky-ten-khoa-zula-regulardemo-ttf.jpeg"
				alt="Bootstrap" height="24">
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="NewFile.jsp">Trang chủ</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Combo
							giảm giá</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown" aria-expanded="false"> Thể loại </a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">Văn Học</a></li>
							<li><a class="dropdown-item" href="#">Lịch Sử</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">Kinh Tế</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link disabled">Hết hàng</a>
					</li>
				</ul>
				<form class="d-flex" role="search" >
	<button class="cart-button">
  <img src="img/giohang/1.png" alt="Cart icon"> Cart
</button>

<style>
.cart-button {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  background-color: white;
  color: black;
  border: 2px solid black;
  padding: 10px 20px;
  border-radius: 5px;
  font-size: 16px;
  cursor: pointer;
}

.cart-button img {
  margin-right: 10px;
  width: 20px;
  height: 20px;
}
</style>

					<input class="form-control me-2" type="search"
						placeholder="Nội dung tìm kiếm" aria-label="Search">
					<button class="btn btn-outline-success" type="submit">Tìm</button>
					<div class="btn-group dropstart">
					</form>
	<form action="sulytaikhoan" method="post">
  <button type="button" class="btn btn-secondary dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    Tài Khoản
  </button>
  <ul class="dropdown-menu" name="taikhoanviip">
  <li ><a class="dropdown-item" href="thongbao" >Thông báo</a></li>
    <li ><a class="dropdown-item" href="doimatkhau.jsp" >Đổi mật khẩu</a></li>
    <li ><a class="dropdown-item" href="thaydoithongtin.jsp" >Cập nhập thông tin tài khoản</a></li>
    <li ><a class="dropdown-item" href="dangnhap.jsp"  >Đăng Xuất</a></li>
  </ul>
  </form>
</div>
				
			</div>
		</div>
	</nav>
	<!-- End Navbar -->

	<!-- Page content -->
	<div class="container mt-4">
		<div class="row">
			<!-- Menu left -->
			<div class="col-lg-3">
				<div class="list-group ">
					<a href="#" class="list-group-item list-group-item-action">
						Văn ôn Võ Luyện </a> <a href="#"
						class="list-group-item list-group-item-action">Tiền trảm hậu tấu</a> <a
						href="#" class="list-group-item list-group-item-action">Tát luyện thành binh
						</a>
				</div>
			</div>
			<!-- End Menu left -->

			<!-- Slider and Products -->
			<div class="col-lg-9">
				<!-- Slider -->
				<div id="carouselExampleIndicators" class="carousel slide mb-4"
					data-bs-ride="true">
					<div class="carousel-indicators">
						<button type="button" data-bs-target="#carouselExampleIndicators"
							data-bs-slide-to="0" class="active" aria-current="true"
							aria-label="Slide 1"></button>
						
					</div>
					<div class="carousel-inner">
						<div class="carousel-item active">
							
						</div>
						
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
				<!-- End Slider -->
				<!-- Products -->
				<div class="row">
<c:url value="/HandleLogin" var="url"/>
<%List<khachhang>a = (ArrayList<khachhang>) session.getAttribute("list"); %> 
		<% if (a!=null){ %>
		<%for (khachhang b:a){ %>
		<%if (b.getAccess()!=1) {%>
						<div class="col-lg-4 col-md-6 mb-4">
						<div >
							 <h3>Thông tin người dùng</h3>
  								<p><strong>ID:</strong> <%=b.getId() %></p>
  								<p><strong>User:</strong> <%=b.getUser() %></p>
  								<p><strong>Password:</strong> <%=b.getPassword() %></p>
  								<p><strong>Gmail:</strong> <%=b.getGmail() %></p>
  								<a href="#">Xóa </a>
						</div>
					</div>
					<%} %>
<%} %>
	<%} %>

				</div>
				<!-- End Products -->
			</div>
			<!-- End Slider and Products -->
		</div>
	</div>
	<!-- End Page content -->

	<jsp:include page="footer.jsp"></jsp:include>
	
	
	
</body>
</html>