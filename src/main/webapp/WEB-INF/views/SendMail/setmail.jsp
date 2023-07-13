<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:url value="/guimail2" var="url"/>
	<form method="post" action="${url}">
	email muốn gửi tới:<input name="mail" type="email"/>
	Chủ đề:            <input name="subject" type="text"/>
	Nội dung:		   <input name="content" type="text"/>
	<button type="submit">bay</button>
	</form>

</body>
</html>