<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <title>Trang Quản Lý (Manager)</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f8f9fa;
        }
        .card {
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="card p-4">
        <h2 class="text-success fw-bold">👔 Trang Quản Lý (Manager)</h2>
        <p class="lead">Xin chào, đây là khu vực dành cho <b>Manager</b>.</p>
        <hr>
        <ul>
            <li><a href="#">📊 Xem báo cáo</a></li>
            <li><a href="#">👨‍💼 Quản lý nhân viên</a></li>
            <li><a href="${pageContext.request.contextPath}/logout" class="text-danger">🚪 Đăng xuất</a></li>
        </ul>
    </div>
</div>
</body>
</html>
