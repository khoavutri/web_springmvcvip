<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib uri="http://www.springframework.org/tags/form"  prefix="fom"%>
<!DOCTYPE html>
<html>
<head>
	<title>Đăng Ký</title>
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
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
      padding: 20px;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    h2 {
      color: #333;
    }

    form {
      background-color: #fff;
      padding: 20px 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      max-width: 600px;
      width: 100%;
    }

    label {
      display: block;
      margin: 10px;
      font-weight: bold;
    }
	
    input[type="text"],
    input[type="email"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
    }

    input[type="submit"] {
      background-color: #4caf50;
      color: #fff;
      border: none;
      padding: 10px 20px;
      margin-top: 10px;
      border-radius: 3px;
      cursor: pointer;
    }

    input[type="submit"]:hover {
      background-color: #45a049;
    }
  </style>
</head>
<body>
<%String loi1 = (String)request.getAttribute("loiuser"); %>
<%String loi2 = (String)request.getAttribute("loimail"); %>
<c:url value="/HandleSignup" var="url"/>
<c:url value="/login" var="url1"/>

  <form method="post" action="${url}">
    <h2>ĐĂNG KÝ</h2>
    
    
	   <label for="gmail">gmail:</label>
    <input type="email" id="gmail" name="gmail" required>
     <%if (loi2!=null){ %><p style="color: red">Gmail đã tồn tại</p><%} %>
	
    
    <label for="username">Tên người dùng:</label>
    <input type="text" id="username" name="username" required>
    <%if (loi1!=null){ %><p style="color: red">Tên đăng nhập đã tồn tại</p><%} %>


    <label for="password">Mật khẩu:</label>
    <input type="password" id="password" name="password" required>
    
    <input type="submit" value="Đăng Ký"> <a href="${url1}">Đăng Nhập</a>
  </form>

</body>
</html>
