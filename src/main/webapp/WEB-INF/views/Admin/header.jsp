<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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
  <img src="https://th.bing.com/th?id=OIP.wyoGI7Bbv-55GHSYEgwpOAHaHa&w=250&h=250&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2" alt="Cart icon"> Cart
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