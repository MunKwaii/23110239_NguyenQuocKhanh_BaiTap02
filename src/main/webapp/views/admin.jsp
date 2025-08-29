<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Trang Quản Trị</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f4f6f9;
        }
        .card {
            border-radius: 15px;
        }
        .menu a {
            text-decoration: none;
        }
        .menu .list-group-item:hover {
            background: #e9ecef;
        }
    </style>
</head>
<body>
<jsp:include page="topbar.jsp" />

<div class="container mt-4">
    <div class="row">
        <div class="col-md-3">
            <div class="card shadow-sm">
                <div class="card-header bg-primary text-white">
                    <h5 class="mb-0">⚙️ Menu Quản Trị</h5>
                </div>
                <div class="list-group menu list-group-flush">
                    <a href="${pageContext.request.contextPath}/views/home.jsp" class="list-group-item">🏠 Trang chủ</a>
                    <a href="${pageContext.request.contextPath}/admin/category/list" class="list-group-item">📂 Quản lý danh mục</a>
                    <a href="${pageContext.request.contextPath}/admin/category/add" class="list-group-item">➕ Thêm danh mục</a>
                    <a href="${pageContext.request.contextPath}/logout" class="list-group-item text-danger">🚪 Đăng xuất</a>
                </div>
            </div>
        </div>

        <!-- Content -->
        <div class="col-md-9">
            <div class="card shadow-sm">
                <div class="card-header bg-success text-white">
                    <h5 class="mb-0">📊 Trang Quản Trị</h5>
                </div>
                <div class="card-body">
                    <p class="lead">Xin chào <strong>Admin</strong>, hãy chọn chức năng bạn muốn quản lý ở menu bên trái.</p>
                    <hr>
                    <p class="text-muted">👆 Đây chỉ là trang demo điều hướng — click vào menu để mở chức năng tương ứng.</p>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
