<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Trang Quản Trị</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <!-- bạn có thể thêm Bootstrap nếu muốn -->
</head>
<body>
<jsp:include page="topbar.jsp" />

<div class="container">
    <h2>Trang Quản Trị</h2>
    <hr/>

    <ul>
        <li><a href="${pageContext.request.contextPath}/views/home.jsp">Trang chủ</a></li>
        <li><a href="${pageContext.request.contextPath}/home/category/list">Quản lý danh mục</a></li>
        <li><a href="${pageContext.request.contextPath}/home/category/add">Thêm danh mục</a></li>
        <li><a href="${pageContext.request.contextPath}/logout">Đăng xuất</a></li>
    </ul>
</div>
</body>
</html>
