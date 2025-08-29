<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="UTF-8">
  <title>Trang Người Dùng (User)</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body {
      background: linear-gradient(135deg, #ffecd2, #fcb69f);
    }
    .card {
      border-radius: 20px;
      box-shadow: 0 4px 12px rgba(0,0,0,0.2);
    }
  </style>
</head>
<body>
<div class="container mt-5">
  <div class="card p-4 text-center">
    <h2 class="text-primary fw-bold">🙋 Trang Người Dùng</h2>
    <p class="lead">Xin chào, bạn đang đăng nhập với vai trò <b>User</b>.</p>
    <hr>
    <a href="#">🛒 Xem sản phẩm</a>
    <a href="#">🛍 Giỏ hàng</a>
    <a href="${pageContext.request.contextPath}/logout" class="btn btn-outline-danger m-2">🚪 Đăng xuất</a>
  </div>
</div>
</body>
</html>
